package org.iii.ee100.animour.forum.web;

import java.sql.Timestamp;
import java.util.List;

import org.iii.ee100.animour.forum.entity.Article;
import org.iii.ee100.animour.forum.entity.Category;
import org.iii.ee100.animour.forum.entity.Comment;
import org.iii.ee100.animour.forum.service.ForumService;
import org.iii.ee100.animour.member.entity.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ForumController {
	@Autowired
	ForumService forumService;

	@RequestMapping("/insertArticleForm")
	public String forum(Model model) {
		// sidebar要用的
		sidebar(model);
		return "/forum/insertArticleForm";
	}
	
	@RequestMapping(path = { "/postArticle" }, method = { RequestMethod.POST })
	public String post(Long memberId,Long categoryId,Article article,Model model) {
		if (memberId!=null && categoryId!=null) {
			article.setCategory(forumService.getOneCateGory(categoryId));
			article.setMember(forumService.getOneMember(memberId));
			Timestamp now = new Timestamp(System.currentTimeMillis());
			article.setPostTime(now);
			article.setUpdateTime(now);
			article.setClick(0L);
			article.setCommentLength(0);
			forumService.insert(article);
		}
		Article atc = forumService.getOne(Long.valueOf(article.getId()));
		if (atc != null) {
			List<Comment> comts = atc.getComment();
			if (comts != null) {
				model.addAttribute("comments", comts);
			}
			model.addAttribute("article", atc);
		}
		// sidebar要用的
		sidebar(model);
		return "/forum/singleArticle";
	}

	@RequestMapping(path = { "/forum/findAll" }, method = { RequestMethod.GET })
	public String findAll(int pageNo,Model model) {
		//分頁
		if(pageNo < 1 ) {
			pageNo = 1;
		}
		Page<Article> page = forumService.getPage(pageNo, 3);
		int totalPage = page.getTotalPages();
		if(pageNo > totalPage) {
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
		Article atc = forumService.getOne(Long.valueOf(article.getId()));
		if (atc != null) {
			Long click = atc.getClick();
			atc.setClick(click+1);
			forumService.update(atc);
			List<Comment> comts = atc.getComment();
			if (comts != null) {
				model.addAttribute("comments", comts);
			}
			model.addAttribute("article", atc);
		}
		// sidebar要用的
		sidebar(model);
		return "/forum/singleArticle";
	}

	@RequestMapping(path = { "/forum/search" }, method = { RequestMethod.GET })
	public String search(String search, Model model) {
		List<Article> articles = forumService.getSearchBySubject("%" + search + "%");
		model.addAttribute("articles", articles);
		// sidebar要用的
		sidebar(model);
		return "/forum/article";
	}

	@RequestMapping(path = { "/forum/category" }, method = { RequestMethod.GET })
	public String findByCategory(int pageNo,Long categoryId, Model model) {
		//分頁
		if(pageNo < 1 ) {
			pageNo = 1;
		}
		Page<Article> page = forumService.getSearchByCategoryId(categoryId,pageNo,3);
		int totalPage = page.getTotalPages();
		if(pageNo > totalPage) {
			pageNo = totalPage;
		}
		page = forumService.getSearchByCategoryId(categoryId,pageNo,3);
		model.addAttribute("page", page);
		String categoryQueryString = "categoryId="+categoryId+"&";
		model.addAttribute("categoryQueryString", categoryQueryString);
		// sidebar要用的
		sidebar(model);
		return "/forum/article";
	}

	@RequestMapping(path = { "/forum/comment" }, method = { RequestMethod.POST })
	public String newComment(Long memberId, Long articleId, Comment comment, Model model) {
		comment.setUpdateTime(new Timestamp(System.currentTimeMillis()));
		Article atc = forumService.getOne(articleId);
		if (atc != null) {
			List<Comment> comts = atc.getComment();
			if (comts != null) {
				model.addAttribute("comments", comts);
			}

			comment.setArticle(atc);
			model.addAttribute("article", atc);
		}
		Member member = forumService.getOneMember(memberId);
		if (member != null) {
			comment.setMember(member);
		}
		forumService.insertComment(comment);
		// sidebar要用的
		sidebar(model);
		return "/forum/singleArticle";
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
		forumService.insert(article);
		model.addAttribute("insertArticle", article);
		return "/forum/crudResult";
	}

	@RequestMapping(path = { "/forum/update" }, method = { RequestMethod.POST })
	public String update(Article article, Model model) {
		forumService.update(article);
		model.addAttribute("updateArticle", article);
		return "/forum/crudResult";
	}

	@RequestMapping(path = { "/forum/delete" }, method = { RequestMethod.GET })
	public String delete(Article article, Model model) {
		forumService.delete(Long.valueOf(article.getId()));
		model.addAttribute("deleteArticle", article);
		return "/forum/crudResult";
	}
}
