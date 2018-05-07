package org.iii.ee100.animour.forum.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.iii.ee100.animour.forum.entity.Article;
import org.iii.ee100.animour.forum.entity.Category;
import org.iii.ee100.animour.forum.entity.Comment;
import org.iii.ee100.animour.forum.service.ForumService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ArticlePageController {
	@Autowired
	ForumService forumService;
	
	//sidebar用的方法，在所有@RequestMapping之前被執行
	@ModelAttribute
	public void sidebar(Model model) {
		List<Article> popular = forumService.getPopularFour();
		if (popular != null) {
			model.addAttribute("popular", popular);
		}
		List<Category> categorys = forumService.getAllCategory();
		if (categorys != null) {
			model.addAttribute("categorys", categorys);
		}
	}

	//前往空白表單並送出一個空的Article物件
	@RequestMapping(path = { "/postArticle" }, method = { RequestMethod.GET })
	public String articleForm(Model model) {
		Article article = new Article();
		model.addAttribute("article", article);
		return "/forum/insertArticleForm";
	}

//	@RequestMapping(path = { "/postArticle" }, method = { RequestMethod.GET })
//	public String articleForm(Model model) {
//		return "/forum/insertArticleForm";
//	}
	
	//將使用者輸入自動接收轉型填入前一個方法傳入的Article物件
//	@RequestMapping(path = { "/postArticle" }, method = { RequestMethod.POST })
//	public String articlePost(@ModelAttribute("article") Article article, Model model) {
//		if (article.getCategory() != null) {
//			Timestamp now = new Timestamp(System.currentTimeMillis());
//			article.setPostTime(now);
//			article.setUpdateTime(now);
//			article.setClick(0L);
//			// 取得登入中會員的身分
//			Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
//			if (principal instanceof Member) {
//				article.setMember((Member) principal);
//			} else {
//				String account = principal.toString();
//				System.out.println(account);
//			}
//			try {
//				forumService.insert(article);
//			} catch (Exception e) {
//				e.printStackTrace();
//				System.out.println(article);
//				return "/rollback";
//			}
//		} else {
//			return "redirect:/postArticle";
//		}
//		sidebar(model);
//		return "/forum/singleArticle";
//	}
	
	//給下拉式category選單使用的方法
	@ModelAttribute("categoryList")
	public Map<Long, String> getCategoryList() {
		Map<Long, String> categoryMap = new HashMap<>();
		List<Category> categoryList = forumService.getAllCategory();
		for (Category category : categoryList) {
			categoryMap.put(category.getId(), category.getName());
		}
		return categoryMap;
	}
	
	//綜覽文章頁面
	@RequestMapping(path = { "/forum/findAll" }, method = { RequestMethod.GET })
	public String findAllPage(Model model) {	
//		List<Article> articleList = forumService.getArticleList();
//		model.addAttribute("page", articleList);
		return "/forum/article";
	}
	
	//一筆文章頁面
	@RequestMapping(path = { "/forum/findOne" }, method = { RequestMethod.GET })
	public String findOnePage(Article article, Model model) {
		Article atc;
		try {
			atc = (Article) forumService.getOne(Long.valueOf(article.getId()));
		} catch (Exception e) {
			e.printStackTrace();
			return "/rollback";
		}
		// click 計算
		if (atc != null && atc.getClick()!= null) {
			Long click = atc.getClick();
			atc.setClick(click + 1);
			try {
				forumService.update(atc);
			} catch (Exception e) {
				e.printStackTrace();
				return "/rollback";
			}
			List<Comment> comments = forumService.getCommentByArticleId(article.getId());
			model.addAttribute("article", atc);
			model.addAttribute("comments", comments);
		}
		return "/forum/singleArticle";
	}
	
}
