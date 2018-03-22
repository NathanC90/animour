
package org.iii.ee100.animour;

import java.util.List;

import org.iii.ee100.animour.forum.entity.Article;
import org.iii.ee100.animour.hospital.entity.Hospital;
import org.iii.ee100.animour.hotel.entity.HotelBean;
import org.iii.ee100.animour.hotel.service.HotelService;
import org.iii.ee100.animour.news.entity.NewsBean;
import org.iii.ee100.animour.shopping.entity.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

	@Autowired
	org.iii.ee100.animour.halfway.service.AnimalServiceImpl animalserviceImpl ;
	@Autowired
	org.iii.ee100.animour.hospital.service.HospitalService hospitalService;
	@Autowired
	org.iii.ee100.animour.forum.service.ForumService forumService;
	@Autowired
	org.iii.ee100.animour.shopping.service.ProductService productService;
	@Autowired
	org.iii.ee100.animour.news.service.NewsService newsService;
	@Autowired
	HotelService hotel;
	
	@RequestMapping("/")
	public String index(Model model,Model model2) {
		List<org.iii.ee100.animour.halfway.entity.Animal> animals = animalserviceImpl.getSix();
		model.addAttribute("animals", animals);
	
		List<Hospital> hospitalls =hospitalService.getThreeForIndex();		
		model.addAttribute("hospitals", hospitalls);
		
		List<Article> articles = forumService.getNew();
		System.out.println(articles);
		model.addAttribute("articles", articles);
		
		List<Product> product = productService.getAll();
		model.addAttribute("productBeans", product);
		
		List<NewsBean> bean =newsService.getAll();
		model.addAttribute("allNews", bean);
		
		List<HotelBean> hotelBean =hotel.getSix();
		model.addAttribute("hotelBean",hotelBean);
		
		return "/index";
	}
	
//	@RequestMapping("/hello")
//	public String hello() {
//		return "/hello";
//	}
	
	
	
	
}
