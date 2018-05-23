package org.iii.ee100.animour.news.web;

import java.util.List;

import org.iii.ee100.animour.member.service.MemberService;
import org.iii.ee100.animour.news.entity.News;
import org.iii.ee100.animour.news.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class NewsController {
	
	@Autowired
	NewsService newsService;
	
	@Autowired
	MemberService memberService;
	//Animour首頁區塊
	@RequestMapping("/news/index")
	public String findAll(int pageNo,Model model) {
		//分頁
		if(pageNo < 1) {
			pageNo = 1;
		}
		Page<News> page = newsService.getPage(pageNo, 6);
		int totalPage = page.getTotalPages();
		if(pageNo > totalPage && totalPage!=0) {
			pageNo = totalPage;
		}
		page = newsService.getPage(pageNo, 6);
		model.addAttribute("page", page);
		
		return "/news/newsIndex";
	}
	
	@RequestMapping("/news/event")
	public String newsIndex(Model model) {
		return "/news/event";
	}
	
	@RequestMapping("/news/enroll")
	public String newsEnroll(Model model) {
		return "/news/enroll";
	}
	
	@RequestMapping("/news/admin")
	public String newsAdmin(Model model) {
		return "/news/admin";
	}
	
	@RequestMapping("/news/ticket")
	public String newsTicket(Model model) {
		return "/news/ticket";
	}
	
	// Insert News
		@RequestMapping(value = "/news/insertNews", method = RequestMethod.GET)
		public String input(Model model) {
			model.addAttribute("news", new News());
			return "/news/insertNews";
		}
	
	@RequestMapping("/news/manage")
	public String newsManage(Model model) {
		return "/news/manage";
	}
	
	
	
	@RequestMapping(path= {"/findOneNews"}, method={RequestMethod.GET})
	public String findOne(News news, Model model) {
		News nb = newsService.getOne(Long.valueOf(news.getId()));
		if (nb != null) {
			model.addAttribute("oneNews", nb);
		}
		
		return "/news/manage";
	}
	
	@RequestMapping(path= {"/findAllNews"}, method={RequestMethod.GET})
	public String selectAll(Model model) {
		model.addAttribute("allNews", newsService.getAll());
		return "/news/manage";
	}

	
	@RequestMapping(path= {"/deleteNews"}, method={RequestMethod.GET})
	public String deleteNews(News news, Model model) {
		newsService.delete(news.getId());
		model.addAttribute("delete", Long.valueOf(news.getId()));
		return "/news/manage";
	}
	
	@RequestMapping(path= {"/insertNews"}, method={RequestMethod.POST})
	public String insertNews(News news, Model model) {
		newsService.insert(news);
		model.addAttribute("insertNews", news);
		return "/news/manage";
	}
	
	@RequestMapping(value = "/news/update")
	public String maintain(Model model) {
		List<News> adminPosts = newsService.getByMemberId(memberService.getCurrentMember().getId());
		for(News news:adminPosts) {
			System.err.println("news" + news.getSubject());
		}
		model.addAttribute("PostsQuantity", adminPosts.size());
		model.addAttribute("adminPosts", adminPosts);
		return "/news/manage";
	}
	
	// Form Data Return Show
		@RequestMapping(value = "/news/{id}", method = { RequestMethod.GET })
		public String input(@PathVariable("id") Long id, Model model) {
			News news = newsService.getOne(id);
			model.addAttribute("news", news);
			return "/news/manage";
		}

		// Update News
		@RequestMapping(value = { "/news/{id}" }, method = { RequestMethod.POST })
		public String updateNews(News news, Model model) {
			try {
				newsService.update(news);
			} catch (Exception e) {
				e.printStackTrace();
				return "/rollback";
			}
			return "redirect:/news/manage";
		}
	
//	@RequestMapping(path= {"/updateNews"}, method={RequestMethod.POST})
//	public String updateNews(News news, Model model) {
//		newsService.update(news);
//		model.addAttribute("updateNews", news);
//		return "/news/manage";
//	}
	
	@RequestMapping(path= {"/findSixNews"}, method={RequestMethod.GET})
	public String findSixNews(Model model) {
		model.addAttribute("sixNews", newsService.getSixNews());
		return "/news/newsIndex";
	}
	
	
	
}
