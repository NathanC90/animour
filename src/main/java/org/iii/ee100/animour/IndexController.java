
package org.iii.ee100.animour;

import java.util.List;

import org.iii.ee100.animour.forum.entity.Article;
import org.iii.ee100.animour.home.entity.Animal;
import org.iii.ee100.animour.hospital.entity.Hospital;
import org.iii.ee100.animour.hotel.entity.HotelBean;
import org.iii.ee100.animour.hotel.service.HotelServiceImple;
import org.iii.ee100.animour.news.entity.NewsBean;
import org.iii.ee100.animour.shopping.entity.ProductBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

	@Autowired
	org.iii.ee100.animour.halfway.service.AnimalServiceImpl as1 ;
	@Autowired
	org.iii.ee100.animour.hospital.service.HospitalServiceImpl hosp;
	@Autowired
	org.iii.ee100.animour.forum.service.ForumServiceImpl fs;
	@Autowired
	org.iii.ee100.animour.shopping.service.ProductServiceImpl ps;
	@Autowired
	org.iii.ee100.animour.news.service.NewsServiceImpl ns;
	@Autowired
	HotelServiceImple hotel;
	
	@RequestMapping("/")
	public String index(Model model,Model model2) {
		List<Animal> animals = as1.getSix();
		model.addAttribute("animals", animals);
	
		List<Hospital> hospitalls =hosp.getThreeForIndex();		
		model.addAttribute("hospitals", hospitalls);
		
		List<Article> articles = fs.getNew();
		System.out.println(articles);
		model.addAttribute("articles", articles);
		
		List<ProductBean> productBeans = ps.getAll();
		model.addAttribute("productBeans", productBeans);
		
		List<NewsBean> bean =ns.getAll();
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