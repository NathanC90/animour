package org.iii.ee100.animour.forum.web;

import java.sql.Timestamp;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.iii.ee100.animour.forum.entity.Article;
import org.iii.ee100.animour.forum.entity.Category;
import org.iii.ee100.animour.forum.entity.Comment;
import org.iii.ee100.animour.forum.service.ForumService;
import org.iii.ee100.animour.member.entity.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ForumController {
	@Autowired
	ForumService forumService;

	@RequestMapping(path = { "/postArticle" }, method = { RequestMethod.GET })
	public String articleForm(Model model) {
		Article article = new Article();
		model.addAttribute("article", article);
		// sidebar要用的
		sidebar(model);
		return "/forum/insertArticleForm";
	}

	@RequestMapping(path = { "/postArticle" }, method = { RequestMethod.POST })
	public String articlePost(@ModelAttribute("article") Article article, Model model) {
		if (article.getCategory() != null) {
			Timestamp now = new Timestamp(System.currentTimeMillis());
			article.setPostTime(now);
			article.setUpdateTime(now);
			article.setClick(0L);
			article.setCommentLength(0);
			// 設定登入的會員
			Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
			if (principal instanceof Member) {
				article.setMember((Member) principal);
			} else {
				String account = principal.toString();
				System.out.println(account);
			}
			try {
				forumService.insert(article);
			} catch (Exception e) {
				e.printStackTrace();
				return "/rollback";
			}
		} else {
			return "redirect:/postArticle";
		}
		// sidebar要用的
		sidebar(model);
		return "/forum/singleArticle";
	}

	@ModelAttribute("categoryList")
	public Map<Long, String> getCategoryList() {
		Map<Long, String> categoryMap = new HashMap<>();
		List<Category> categoryList = forumService.getAllCategory();
		for (Category category : categoryList) {
			categoryMap.put(category.getId(), category.getName());
		}
		return categoryMap;
	}

	@RequestMapping(path = { "/forum/findAll" }, method = { RequestMethod.GET })
	public String findAll(Integer pageNo, Model model) {
		// 分頁
		if (pageNo < 1) {
			pageNo = 1;
		}
		Page<Article> page = forumService.getPage(pageNo, 3);
		int totalPage = page.getTotalPages();
		if (pageNo > totalPage && totalPage != 0) {
			pageNo = totalPage;
		}
		page = forumService.getPage(pageNo, 3);
		model.addAttribute("page", page);
		// sidebar
		sidebar(model);
		return "/forum/article";
	}

	@RequestMapping(path = { "/forum/findOne" }, method = { RequestMethod.GET })
	public String findOne(Article article, Model model) {
		Article atc;
		try {
			atc = (Article) forumService.getOne(Long.valueOf(article.getId()));
		} catch (Exception e) {
			e.printStackTrace();
			return "/rollback";
		}
		// click 計算
		if (atc != null) {
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
		// sidebar要用的
		sidebar(model);
		return "/forum/singleArticle";
	}

	@RequestMapping(path = { "/forum/search" }, method = { RequestMethod.GET })
	public String search(int pageNo, String search, Model model) {
		// 分頁
		if (pageNo < 1) {
			pageNo = 1;
		}
		Page<Article> page = forumService.getSearchBySubject("%" + search + "%", pageNo, 3);
		int totalPage = page.getTotalPages();
		if (pageNo > totalPage && totalPage != 0) {
			pageNo = totalPage;
		}
		page = forumService.getSearchBySubject("%" + search + "%", pageNo, 3);
		model.addAttribute("page", page);
		String queryString = "search=" + search + "&";
		model.addAttribute("queryString", queryString);
		// sidebar要用的
		sidebar(model);
		return "/forum/article";
	}

	@RequestMapping(path = { "/forum/category" }, method = { RequestMethod.GET })
	public String findByCategory(int pageNo, Long categoryId, Model model) {
		// 分頁
		if (pageNo < 1) {
			pageNo = 1;
		}
		Page<Article> page = forumService.getSearchByCategoryId(categoryId, pageNo, 3);
		int totalPage = page.getTotalPages();
		if (pageNo > totalPage && totalPage != 0) {
			pageNo = totalPage;
		}
		page = forumService.getSearchByCategoryId(categoryId, pageNo, 3);
		model.addAttribute("page", page);
		String queryString = "categoryId=" + categoryId + "&";
		model.addAttribute("queryString", queryString);
		// sidebar要用的
		sidebar(model);
		return "/forum/article";
	}

	@RequestMapping(path = { "/forum/comment" }, method = { RequestMethod.POST })
	public String newComment(Long articleId, Comment comment, Model model) {
		comment.setUpdateTime(new Timestamp(System.currentTimeMillis()));
		Article atc;
		try {
			atc = (Article) forumService.getOne(articleId);
		} catch (Exception e) {
			e.printStackTrace();
			return "/rollback";
		}
		if (atc != null) {
			List<Comment> comts = atc.getComment();
			if (comts != null) {
				model.addAttribute("comments", comts);
			}

			comment.setArticle(atc);
			model.addAttribute("article", atc);
		}
		// 設定登入的會員
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if (principal instanceof Member) {
			comment.setMember((Member) principal);
		} else {
			String account = principal.toString();
			System.out.println(account);
		}
		
		forumService.insertComment(comment);
		// sidebar要用的
		sidebar(model);
		return "redirect:findOne?id=" + articleId;
	}

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

	@RequestMapping(path = { "/forum/insert" }, method = { RequestMethod.POST })
	public String insert(Article article, Model model) {
		try {
			forumService.insert(article);
		} catch (Exception e) {
			e.printStackTrace();
			return "/rollback";
		}
		model.addAttribute("insertArticle", article);
		return "/forum/crudResult";
	}

	@RequestMapping(path = { "/forum/update" }, method = { RequestMethod.POST })
	public String update(Article article, Model model) {
		try {
			forumService.update(article);
		} catch (Exception e) {
			e.printStackTrace();
			return "/rollback";
		}
		model.addAttribute("updateArticle", article);
		return "/forum/crudResult";
	}

	@RequestMapping(path = { "/forum/delete" }, method = { RequestMethod.GET })
	public String delete(Article article, Model model) {
		try {
			forumService.delete(Long.valueOf(article.getId()));
		} catch (Exception e) {
			e.printStackTrace();
			return "/rollback";
		}
		model.addAttribute("deleteArticle", article);
		return "/forum/crudResult";
	}
}
