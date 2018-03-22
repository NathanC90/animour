package org.iii.ee100.animour.forum.web;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.iii.ee100.animour.forum.entity.Article;
import org.iii.ee100.animour.forum.service.ForumService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ForumController {
	@Autowired
	ForumService forumService;
	
	
	@RequestMapping("/forum")
	public String Forum(Model model) {

		return "/forum/forum";
	}

	@RequestMapping("/forum/findAll")
	public String findAll(HttpServletRequest req) {
		ArrayList<Article> articles = forumService.getAll();
		System.out.println(articles);
		req.setAttribute("articles", articles);

		return "/forum/crudResult";
	}

	@RequestMapping("/forum/findOne")
	public String findOne(HttpServletRequest req) {
		HashMap<String,String> errors = new HashMap<>();
		String articleId = req.getParameter("articleId");
		if (articleId!=null && articleId.trim().length() != 0) {
			Long id = Long.valueOf(articleId);
			Article article = forumService.getOne(id);
			req.setAttribute("article", article);
		}else {
			errors.put("err2", "FindOne Failed");
			req.setAttribute("errors", errors);
		}
		return "/forum/crudResult";
	}

	@RequestMapping("/forum/insert")
	public String insert(HttpServletRequest req) {
		HashMap<String,String> errors = new HashMap<>();
		String postName = req.getParameter("inname");
		String subject = req.getParameter("insubject");
		String content = req.getParameter("incontent");
		if(postName==null || postName.trim().length()==0) {
			errors.put("err3", "(Insert)Please Enter postName");
		}
		if(subject==null || subject.trim().length()==0) {
			errors.put("err4", "(Insert)Please Enter subject");
		}
		if(content==null || content.trim().length()==0) {
			errors.put("err5", "(Insert)Please Enter content");
		}
		if(errors!=null && errors.isEmpty()) {
			Article a1 = new Article();
			a1.setPostName(postName);
			a1.setSubject(subject);
			a1.setContent(content);
			forumService.insert(a1);
			Article article = forumService.getOne(a1.getId());
			req.setAttribute("insertArticle", article);
		}else {
			req.setAttribute("errors", errors);
		}
		return "/forum/crudResult";
	}

	@RequestMapping("/forum/update")
	public String update(HttpServletRequest req) {

		String articleId = req.getParameter("uparticleId");
		String postName = req.getParameter("upname");
		String subject = req.getParameter("upsubject");
		String content = req.getParameter("upcontent");
		String postTime = req.getParameter("uptime");
		HashMap<String,String> errors = new HashMap<>();
		Article a1 = new Article();
		if(articleId==null || articleId.trim().length()==0) {
			errors.put("err6", "(update)Please Enter articleId");
		}
		if(postName==null || postName.trim().length()==0) {
			errors.put("err3", "(update)Please Enter postName");
		}
		if(subject==null || subject.trim().length()==0) {
			errors.put("err4", "(update)Please Enter subject");
		}
		if(content==null || content.trim().length()==0) {
			errors.put("err5", "(update)Please Enter content");
		}
		if(postTime==null || postTime.trim().length()==0) {
			Timestamp ts = new Timestamp(System.currentTimeMillis());
			a1.setPostTime(ts);
		}else {
			Timestamp ts = Timestamp.valueOf(postTime);
			a1.setPostTime(ts);
		}
		
		if (errors!=null && errors.isEmpty()) {
			Long id = Long.valueOf(articleId);
			
			a1.setId(id);
			a1.setPostName(postName);
			a1.setSubject(subject);
			a1.setContent(content);
			
			forumService.update(a1);
			Article article = forumService.getOne(a1.getId());
			req.setAttribute("updateArticle", article);
		}else {
			req.setAttribute("errors", errors);
		}
		return "/forum/crudResult";
	}

	@RequestMapping("/forum/delete")
	public String delete(HttpServletRequest req) {
		String articleId = req.getParameter("dlarticleId");
		HashMap<String,String> errors = new HashMap<>();
		if (articleId != null && articleId.trim().length() != 0) {
			Long id = Long.valueOf(articleId);

			Article article = forumService.getOne(id);

			if (article != null) {
				forumService.delete(article.getId());
				req.setAttribute("deleteArticle", id);
			}else {
				errors.put("err1", "Delete Failed");
				req.setAttribute("errors", errors);
			}
		}else {
			errors.put("err1", "Please Enter id");
			req.setAttribute("errors", errors);
		}
		return "/forum/crudResult";
	}
}
