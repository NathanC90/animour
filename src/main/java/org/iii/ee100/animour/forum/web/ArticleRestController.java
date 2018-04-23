package org.iii.ee100.animour.forum.web;

import java.sql.Timestamp;
import java.util.List;

import org.iii.ee100.animour.forum.entity.Article;
import org.iii.ee100.animour.forum.entity.Comment;
import org.iii.ee100.animour.forum.service.ForumService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.Gson;

@RestController
@RequestMapping("/articles")
public class ArticleRestController {

	@Autowired
	ForumService forumService;

	// 綜覽文章頁面AJAX用的
	@RequestMapping(method = RequestMethod.GET, produces = { "application/json" })
	public String findAll() {
		Gson gson = new Gson();
		List<Article> articleList = forumService.getArticleList();
		String json = gson.toJson(articleList);
		return json;
	}

	// 查詢一筆文章AJAX用的
	@RequestMapping(value = "/{id}", method = RequestMethod.GET, produces = { "application/json" })
	public String findOne(@PathVariable(value = "id") Long id) {
		Gson gson = new Gson();
		Article article = forumService.getOne(id);
		String json = gson.toJson(article);
		return json;
	}

	// 搜尋文章標題AJAX用的
	@RequestMapping(value = "/search/{search}", method = RequestMethod.GET, produces = { "application/json" })
	public String search(@PathVariable(value = "search") String search) {
		Gson gson = new Gson();
		List<Article> articleList = forumService.getArticlesSearchBySubject(search);
		String json = gson.toJson(articleList);
		return json;
	}

	// 按照文章類別查詢
	@RequestMapping(path = { "/category/{categoryId}" }, method = RequestMethod.GET, produces = { "application/json" })
	public String findByCategory(@PathVariable(value = "categoryId") Long categoryId) {
		Gson gson = new Gson();
		List<Article> articleList = forumService.getArticlesByCategoryId(categoryId);
		String json = gson.toJson(articleList);
		return json;
	}

	// 新增留言
	@RequestMapping(value = { "/comment" }, method = RequestMethod.POST, consumes = { "application/json" })
	public void newComment(@RequestBody Comment comment) {
		comment.setUpdateTime(new Timestamp(System.currentTimeMillis()));
		forumService.insertComment(comment);
	}

	//讓COMMENT的AJAX呼叫用的
	@RequestMapping(value = { "/comment/{articleId}" }, method = RequestMethod.GET, produces = { "application/json" })
	public String getComment(@PathVariable(value = "articleId") Long articleId) {
		Gson gson = new Gson();
		List<Comment> commentList = forumService.getCommentByArticleId(articleId);
		String json = gson.toJson(commentList);
		return json;
	}
}
