package org.iii.ee100.animour.hotel.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.iii.ee100.animour.hotel.entity.HotelBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HotelController {
	@Autowired
	org.iii.ee100.animour.hotel.service.HotelServiceImple hotel;
	
	@RequestMapping("/hotel/select")
	public String select(HotelBean hotelbean,Model model) {
		
		model.addAttribute("beansselect", hotel.getone(hotelbean.getHotelId()));
		return"/hotel/index";
	}
	
	@RequestMapping("/hotel/findAll")
	public String findALl(Model model) {
		
		model.addAttribute("beansfindall", hotel.getAll());
		return"/hotel/index";
	}
	
	@RequestMapping("/hotel/insertHotel")
	public String insertHotel(HotelBean hotelbean,Model model) {
		hotel.inser(hotelbean);
		model.addAttribute("hotelkey", hotelbean);
		return "hotel/InsertAnimalForm";
		
	}
	
//	@RequestMapping(path= {"/hotel/updateHotel"},method= {RequestMethod.POST})
	@RequestMapping("/hotel/updateHotel")
	public String updateHotel(HotelBean hotelbean,Model model) {
		hotel.update(hotelbean);
		model.addAttribute("hotelkey2",hotelbean);
		return "/hotel/InsertAnimalForm";
		
	}
	
	
	@RequestMapping("/hotel/delete")
	public String delete (HotelBean hotelbean,Model model,long hotelId) {
		hotel.delete(hotelId);
		model.addAttribute("hotelkey3", hotelbean);
		return "hotel/index";
		
	}
	
	

}
