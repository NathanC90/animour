package org.iii.ee100.animour.news.web;

import org.iii.ee100.animour.news.entity.News;
import org.iii.ee100.animour.news.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class NewsController {
	
	@Autowired
	NewsService newsService;	
	
	@RequestMapping("/news/index")
	public String newsIndex(Model model) {
		return "/news/NewsIndex";
	}
	
	@RequestMapping(path= {"/findOneNews"}, method={RequestMethod.GET})
	public String findOne(News bean, Model model) {
		News nb = newsService.getOne(Long.valueOf(bean.getSeqno()));
		if (nb != null) {
			model.addAttribute("oneNews", nb);
		}
		return "/news/newsForm";
	}
	
	@RequestMapping(path= {"/findAllNews"}, method={RequestMethod.GET})
	public String selectAll(Model model) {
		model.addAttribute("allNews", newsService.getAll());
		return "/news/newsForm";
	}
	
	@RequestMapping(path= {"/deleteNews"}, method={RequestMethod.GET})
	public String deleteNews(News bean, Model model) {
		newsService.delete(bean.getSeqno());
		model.addAttribute("delete", Long.valueOf(bean.getSeqno()));
		return "/news/newsForm";
	}
	
	@RequestMapping(path= {"/insertNews"}, method={RequestMethod.POST})
	public String insertNews(News bean, Model model) {
		newsService.insert(bean);
		model.addAttribute("insertNews", bean);
		return "/news/newsForm";
	}
	
	@RequestMapping(path= {"/updateNews"}, method={RequestMethod.GET})
	public String updateNews(News bean, Model model) {
		newsService.update(bean);
		model.addAttribute("updateNews", bean);
		return "/news/newsForm";
	}
	
}
