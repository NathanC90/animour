package org.iii.ee100.streetanimal;

import java.util.ArrayList;
import org.iii.ee100.streetanimal.home.dao.ArticleDao;
import org.iii.ee100.streetanimal.home.entity.Article;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class forumController {

	@RequestMapping("/forum")
	public String index(Model model) {
//		Article a1 = new Article();
//		a1.setPostName("guest2");
//		a1.setArticleSubject("What?!");
//		a1.setArticleContent("WWWWWWWWWWWWWWWWWWWWWWWWWWWWW");
		ArticleDao ad = new ArticleDao();
//		ad.insert(a1);
//		ad.delete(3L);
//		a1.setPostName("guest8");
//		ad.update(a1);
//		Article aa = ad.findOne(1L);
		ArrayList<Article> articles = ad.findAll();
//		articles.add(aa);
		model.addAttribute("articles", articles);
		
		return "forum";
	}
	
}
