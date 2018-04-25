package org.iii.ee100.animour.forum.web;

import java.sql.Timestamp;
import java.util.List;

import org.iii.ee100.animour.forum.entity.Article;
import org.iii.ee100.animour.forum.entity.Comment;
import org.iii.ee100.animour.forum.service.ForumService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/articles")
public class ArticleRestController {

	@Autowired
	ForumService forumService;

	// 綜覽文章頁面AJAX用的
	@RequestMapping(method = RequestMethod.GET, produces = { "application/json" })
	public List<Article> findAll(int pageNo) {	
		Page<Article> articlePage = forumService.getPage(pageNo, 3);
		int totalPage = articlePage.getTotalPages();
		for(Article article:articlePage) {
			article.setTotalPage(totalPage);
		}
		System.out.println(totalPage+"=========="+pageNo);
		if(pageNo > totalPage && totalPage != 0) {
			return null;
		}
		List<Article> articleList = articlePage.getContent();
		return articleList;
	}

	// 查詢一筆文章AJAX用的     現在會壞
	@RequestMapping(value = "/{id}", method = RequestMethod.GET, produces = { "application/json" })
	public Article findOne(@PathVariable(value = "id") Long id) {
		Article article = forumService.getOne(id);
		return article;
	}

	// 搜尋文章標題AJAX用的
	@RequestMapping(value = "/search/{search}", method = RequestMethod.GET, produces = { "application/json" })
	public List<Article> search(@PathVariable(value = "search") String search, int pageNo) {	
		Page<Article> articlePage = forumService.getPageSearchBySubject(search, pageNo, 3);
		int totalPage = articlePage.getTotalPages();
		for(Article article:articlePage) {
			article.setTotalPage(totalPage);
		}
		System.out.println(totalPage+"=========="+pageNo);
		if(pageNo > totalPage && totalPage != 0) {
			return null;
		}
		List<Article> articleList = articlePage.getContent();
		return articleList;
	}

	// 按照文章類別查詢
	@RequestMapping(path = { "/category/{categoryId}" }, method = RequestMethod.GET, produces = { "application/json" })
	public List<Article> findByCategory(@PathVariable(value = "categoryId") Long categoryId,int pageNo) {
		Page<Article> articlePage = forumService.getPageSearchByCategoryId(categoryId, pageNo, 3);
		int totalPage = articlePage.getTotalPages();
		for(Article article:articlePage) {
			article.setTotalPage(totalPage);
		}
		System.out.println(totalPage+"=========="+pageNo);
		if(pageNo > totalPage && totalPage != 0) {
			return null;
		}
		List<Article> articleList = articlePage.getContent();
		return articleList;
	}
	

	// 新增留言
	@RequestMapping(value = { "/comment" }, method = RequestMethod.POST, consumes = { "application/json" })
	public void newComment(@RequestBody Comment comment) {
		comment.setUpdateTime(new Timestamp(System.currentTimeMillis()));
		forumService.insertComment(comment);
	}

	//讓COMMENT的AJAX呼叫用的
	@RequestMapping(value = { "/comment/{articleId}" }, method = RequestMethod.GET, produces = { "application/json" })
	public List<Comment> getComment(@PathVariable(value = "articleId") Long articleId) {
		List<Comment> commentList = forumService.getCommentByArticleId(articleId);
		return commentList;
	}
}
