package org.iii.ee100.animour.forum.service;

import java.util.List;

import org.assertj.core.util.Lists;
import org.iii.ee100.animour.common.service.GenericService;
import org.iii.ee100.animour.forum.dao.ArticleDao;
import org.iii.ee100.animour.forum.dao.CategoryDao;
import org.iii.ee100.animour.forum.dao.CommentDao;
import org.iii.ee100.animour.forum.entity.Article;
import org.iii.ee100.animour.forum.entity.Category;
import org.iii.ee100.animour.forum.entity.Comment;
import org.iii.ee100.animour.member.dao.MemberDao;
import org.iii.ee100.animour.member.entity.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class ForumService extends GenericService<Article> {

	@Autowired
	private MemberDao memberDao;

	@Autowired
	private ArticleDao articleDao;

	@Autowired
	private CommentDao commentDao;

	@Autowired
	private CategoryDao categoryDao;

	public List<Article> getArticleList() {
		System.out.println("呼叫getArticleList方法");
		List<Article> articleList = articleDao.findAll();
		for (Article article : articleList) {
			article.setCommentLength(commentDao.findByArticleIdOrderByUpdateTime(article.getId()).size());
			article.getCategory().setArticleQuantity(articleDao.findByCategoryId(article.getCategory().getId()).size());
		}
		return articleList;
	}

	@Override
	public Article getOne(Long id) {
		System.out.println("呼叫getOne方法");
		Article article = articleDao.getOne(id);
		article.setCommentLength(commentDao.findByArticleIdOrderByUpdateTime(article.getId()).size());
		System.out.println(commentDao.findByArticleIdOrderByUpdateTime(article.getId()).size()+"============");
		return article;
	}

	public void insertComment(Comment comment) {
		commentDao.save(comment);
		Article article = comment.getArticle();
		article.setCommentLength(commentDao.findByArticleIdOrderByUpdateTime(article.getId()).size());
	}

	public Member getOneMember(Long id) {
		return memberDao.findOne(id);
	}

	public Category getOneCateGory(Long id) {
		Category category = categoryDao.findOne(id);
		category.setArticleQuantity(articleDao.findByCategoryId(id).size());
		return category;
	}

	public List<Article> getNewPostThree() {
		List<Article> articleList = articleDao.findTop3ByOrderByPostTimeDesc();
		for (Article article : articleList) {
			article.setCommentLength(commentDao.findByArticleIdOrderByUpdateTime(article.getId()).size());
		}
		return articleList;
	}

	public List<Article> getPopularFour() {
		return articleDao.findTop4ByOrderByClickDesc();
	}

	public List<Comment> getCommentByArticleId(Long id) {
		return commentDao.findByArticleIdOrderByUpdateTime(id);
	}

	public List<Article> getArticlesSearchBySubject(String subject) {
		return articleDao.findBySubjectContaining(subject);
	}

	public List<Article> getArticlesByCategoryId(Long categoryId) {
		return articleDao.findByCategoryId(categoryId);
	}

	public List<Category> getAllCategory() {
		List<Category> categoryList = Lists.newArrayList(categoryDao.findAll());
		for(Category category:categoryList) {
			category.setArticleQuantity(articleDao.findByCategoryId(category.getId()).size());
			System.out.println("呼叫getAllCategory方法"+getArticlesByCategoryId(category.getId()).size());
		}
		return categoryList;
	}
	
}
