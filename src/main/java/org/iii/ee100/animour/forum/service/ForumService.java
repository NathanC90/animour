package org.iii.ee100.animour.forum.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.assertj.core.util.Lists;
import org.iii.ee100.animour.common.service.GenericService;
import org.iii.ee100.animour.forum.dao.ArticleDao;
import org.iii.ee100.animour.forum.dao.CategoryDao;
import org.iii.ee100.animour.forum.dao.CommentDao;
import org.iii.ee100.animour.forum.dao.ThumbsUpDao;
import org.iii.ee100.animour.forum.entity.Article;
import org.iii.ee100.animour.forum.entity.Category;
import org.iii.ee100.animour.forum.entity.Comment;
import org.iii.ee100.animour.forum.entity.ThumbsUp;
import org.iii.ee100.animour.member.entity.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class ForumService extends GenericService<Article> {

	@Autowired
	private ArticleDao articleDao;

	@Autowired
	private CommentDao commentDao;

	@Autowired
	private ThumbsUpDao thumbsUpDao;

	@Autowired
	private CategoryDao categoryDao;

	public void setTransientForPage(Page<Article> articleList) {
		for (Article article : articleList) {
			article.setCommentLength(commentDao.findByArticleIdOrderByUpdateTime(article.getId()).size());
			article.getCategory().setArticleQuantity(articleDao.findByCategoryIdAndStatus(article.getCategory().getId(),!false).size());
			article.setThumbsQuantity(thumbsUpDao.findByArticleIdAndThumb(article.getId(), true).size());
		}
	}

	public Page<Article> getPage(PageRequest pageable) {
		Page<Article> articleList = articleDao.findAll(pageable);
		setTransientForPage(articleList);
		return articleList;
	}
	
	public Page<Article> getPageByPostTime(PageRequest pageable) {
		Page<Article> articleList = articleDao.findByOrderByPostTimeDesc(pageable);
		setTransientForPage(articleList);
		return articleList;
	}

	public Page<Article> getPageSearchByCategoryId(Long categoryId, PageRequest pageable) {
		Page<Article> articleList = articleDao.findByCategoryId(categoryId, pageable);
		setTransientForPage(articleList);
		return articleList;
	}

	public Page<Article> getPageSearchBySubject(String subject, PageRequest pageable) {
		Page<Article> articleList = articleDao.findBySubjectContainingIgnoreCaseAndStatus(subject, pageable,!false);
		setTransientForPage(articleList);
		return articleList;
	}

	// thumbs區
	public void insertThumbsUp(ThumbsUp thumbsUp) {
		thumbsUpDao.save(thumbsUp);
	}

	public List<ThumbsUp> findThumbsUpByMemberIdAndArticleId(Long memberId, Long articleId) {
		return thumbsUpDao.findByMemberIdAndArticleId(memberId, articleId);
	}

	public List<ThumbsUp> findThumbsUpByArticleIdAndThumb(Long articleId, boolean b) {
		return thumbsUpDao.findByArticleIdAndThumb(articleId, true);
	}

	@Override
	public Article getOne(Long id) {
		Article article = articleDao.getOne(id);
		article.setCommentLength(commentDao.findByArticleIdOrderByUpdateTime(article.getId()).size());
		article.setThumbsQuantity(thumbsUpDao.findByArticleIdAndThumb(article.getId(), true).size());
		return article;
	}

	public void insertComment(Comment comment) {
		Article article = comment.getArticle();
		article.setCommentLength(commentDao.findByArticleIdOrderByUpdateTime(article.getId()).size());
		articleDao.save(article);
		System.out.println("service呼叫新增留言");
		commentDao.save(comment);
	}

	public Category getOneCateGory(Long id) {
		Category category = categoryDao.findOne(id);
		category.setArticleQuantity(articleDao.findByCategoryIdAndStatus(id,!false).size());
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
		return articleDao.findTop4ByStatusOrderByClickDesc(!false);
	}
	
	public List<Article> getThumbsFour() {
		return articleDao.findTop4ByStatusOrderByThumbsQuantityDesc(!false);
	}

	public List<Comment> getCommentByArticleId(Long id) {
		return commentDao.findByArticleIdOrderByUpdateTime(id);
	}

	public List<Article> getArticlesSearchBySubject(String subject) {
		return articleDao.findBySubjectContainingIgnoreCaseAndStatus(subject,!false);
	}

	public List<Article> getArticlesByCategoryId(Long categoryId) {
		return articleDao.findByCategoryIdAndStatus(categoryId,!false);
	}

	public List<Category> getAllCategory() {
		List<Category> categoryList = Lists.newArrayList(categoryDao.findAll());
		for (Category category : categoryList) {
			category.setArticleQuantity(articleDao.findByCategoryIdAndStatus(category.getId(),!false).size());
		}
		return categoryList;
	}
	
	//getArticlesByMemberId
	public List<Article> getArticlesByMemberId(Long Id) {
		return articleDao.findByMemberIdAndStatus(Id,!false);
	}
	
	public Map<String,Integer> findByStatusOrderByThumbsQuantityDesc() {
		List<Article> list = articleDao.findByStatusOrderByThumbsQuantityDesc(!false);
		Map<String,Integer> map = new HashMap<String,Integer>();
		for(Article article:list) {
			System.out.println(article.getMember().getAccount());
			System.out.println(article.getThumbsQuantity());
			System.out.println("======================");
			
			if (map.containsKey(article.getMember().getAccount())) {
				map.put(article.getMember().getAccount(), map.get(article.getMember().getAccount()) + article.getThumbsQuantity());
			}else {
				map.put(article.getMember().getAccount(), article.getThumbsQuantity());
			}
		}
		
		return map;
	}
	

}
