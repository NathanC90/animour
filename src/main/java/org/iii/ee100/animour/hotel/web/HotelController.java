package org.iii.ee100.animour.hotel.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.iii.ee100.animour.hotel.entity.HotelBean;
import org.iii.ee100.animour.hotel.service.HotelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HotelController {
	@Autowired
	HotelService hotelService;
	
	@RequestMapping("/hotel/select")
	public String select(HotelBean hotelbean,Model model) {
		
		model.addAttribute("beansselect", hotelService.getone(hotelbean.getHotelId()));
		return"/hotel/index";
	}
	
	@RequestMapping("/hotel/findAll")
	public String findALl(Model model) {
		
		model.addAttribute("beansfindall", hotelService.getAll());
		return"/hotel/index";
	}
	
	@RequestMapping("/hotel/insertHotel")
	public String insertHotel(HotelBean hotelbean,Model model) {
		hotelService.inser(hotelbean);
		model.addAttribute("hotelkey", hotelbean);
		return "hotel/InsertAnimalForm";
		
	}
	
//	@RequestMapping(path= {"/hotel/updateHotel"},method= {RequestMethod.POST})
	@RequestMapping("/hotel/updateHotel")
	public String updateHotel(HotelBean hotelbean,Model model) {
		hotelService.update(hotelbean);
		model.addAttribute("hotelkey2",hotelbean);
		return "/hotel/InsertAnimalForm";
		
	}
	
	
	@RequestMapping("/hotel/delete")
	public String delete (HotelBean hotelbean,Model model,long hotelId) {
		hotelService.delete(hotelId);
		model.addAttribute("hotelkey3", hotelbean);
		return "hotel/index";
		
	}
	
	

}
