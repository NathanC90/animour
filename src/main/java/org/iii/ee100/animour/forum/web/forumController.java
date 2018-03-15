package org.iii.ee100.animour.forum.web;

import java.util.ArrayList;

import org.iii.ee100.animour.forum.entity.Article;
import org.iii.ee100.animour.forum.service.ForumServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class forumController {
	@Autowired
    ForumServiceImpl fs;
	
	@RequestMapping("/forum")
	public String FindAll(Model model) {
//		ArrayList<Article> articles = fs.getAll();
		Article article = fs.getOne(1L);
		model.addAttribute("article", article);
		
		return "/forum/forum";
	}
	
}
