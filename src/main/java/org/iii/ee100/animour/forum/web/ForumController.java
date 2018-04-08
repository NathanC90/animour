package org.iii.ee100.animour.forum.web;

import java.util.List;

import org.iii.ee100.animour.forum.entity.Article;
import org.iii.ee100.animour.forum.entity.Comment;
import org.iii.ee100.animour.forum.service.ForumService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ForumController {
	@Autowired
	ForumService forumService;
		
	@RequestMapping("/forum")
	public String Forum(Model model) {

		return "/forum/forum";
	}
	
	@RequestMapping(path= {"/forum/findAll"}, method={RequestMethod.GET})
	public String findAll(Model model) {
		List<Article> articles = forumService.getAll();
		
		//試著抓出Member的帳號與文章分類存入article的memberAccount與categoryName屬性中
//		for(Article article:articles) {
//			String memberAccount = article.getMember().getAccount();
//			article.setMemberAccount(memberAccount);
//			
//			String categoryName = article.getCategory().getName();
//			article.setCategoryName(categoryName);
//		}
		
		model.addAttribute("articles", articles);
		return "/forum/article";
	}

	@RequestMapping(path= {"/forum/findOne"}, method={RequestMethod.GET})
	public String findOne(Article article,Model model) {
		Article atc = forumService.getOne(Long.valueOf(article.getId()));
		if(atc!=null) {
			model.addAttribute("article",atc);
		}
		List<Comment> comts = forumService.getCommentByArticleId(Long.valueOf(article.getId()));
		if(comts!=null) {
			model.addAttribute("comments",comts);
		}
		
		return "/forum/singleArticle";
	}

	@RequestMapping(path= {"/forum/insert"}, method={RequestMethod.POST})
	public String insert(Article article,Model model) {
		forumService.insert(article);;
		model.addAttribute("insertArticle",article);
		return "/forum/crudResult";
	}

	@RequestMapping(path= {"/forum/update"}, method={RequestMethod.POST})
	public String update(Article article,Model model) {
		forumService.update(article);
		model.addAttribute("updateArticle",article);
		return "/forum/crudResult";
	}

	@RequestMapping(path= {"/forum/delete"}, method={RequestMethod.GET})
	public String delete(Article article,Model model) {
		forumService.delete(Long.valueOf(article.getId()));
		model.addAttribute("deleteArticle", article);
		return "/forum/crudResult";
	}
}
