package org.iii.ee100.animour.news.web;

import java.util.List;

import org.iii.ee100.animour.news.entity.News;
import org.iii.ee100.animour.news.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NewsIndexController {

	@Autowired
	NewsService newsService;
	
	

	@RequestMapping("/NewsIndex")
	public String index2(Model model) {
		List<News> news =newsService.getAll();
		model.addAttribute("allNews", news);		
		return "/news/NewsIndex";
	}
	
	

	
	
}
