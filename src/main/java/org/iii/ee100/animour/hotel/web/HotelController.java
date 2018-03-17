package org.iii.ee100.animour.hotel.web;

import java.util.List;

import org.iii.ee100.animour.hotel.entity.HotelBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HotelController {
	@Autowired
	org.iii.ee100.animour.hotel.service.HotelServiceImple hs;
	
	@RequestMapping("/forum666")
	public String findALl(Model model) {
		
		List<HotelBean> beans = hs.getAll();
		model.addAttribute("beans", beans);
		return"/hotel/index";
	}
	
	
	
//	public String FindAll(Hotelbean hotel) {
////		ArrayList<Article> articles = fs.getAll();
//		Article article = fs.getOne(1L);
//		model.addAttribute("article", article);
//		
//		return "/hotel/";
//	}
}
