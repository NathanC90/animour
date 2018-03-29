package org.iii.ee100.animour.hotel.web;



import org.iii.ee100.animour.hotel.entity.Hotel;
import org.iii.ee100.animour.hotel.service.HotelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HotelController {
	@Autowired
	private HotelService hotelService;
	
	@RequestMapping("/hotel/select")
	public String select(Hotel hotelbean,Model model) {
		
		model.addAttribute("beansselect", hotelService.getone(hotelbean.getId()));
		return"/hotel/index";
	}
	
	@RequestMapping("/hotel/findAllType")
	public String findALl(Model model) {
		
		model.addAttribute("beansfindall", hotelService.getAll());
		return"/hotel/checkinpage";
	}
	
	@RequestMapping("/hotel/insertHotel")
	public String insertHotel(Hotel hotelbean,Model model) {
		hotelService.inser(hotelbean);
		model.addAttribute("hotelkey", hotelbean);
		return "hotel/InsertAnimalForm";
		
	}
	
//	@RequestMapping(path= {"/hotel/updateHotel"},method= {RequestMethod.POST})
	@RequestMapping("/hotel/updateHotel")
	public String updateHotel(Hotel hotelbean,Model model) {
		hotelService.update(hotelbean);
		model.addAttribute("hotelkey2",hotelbean);
		return "/hotel/InsertAnimalForm";
		
	}
	
	
	@RequestMapping("/hotel/delete")
	public String delete (Hotel hotelbean,Model model,long id) {
		hotelService.delete(id);
		model.addAttribute("hotelkey3", hotelbean);
		return "hotel/index";
		
	}
	
	@RequestMapping("/hotel/selectType")
	public String selectType (Model model,Hotel hotelbean) {

		model.addAttribute("selectType", hotelService.getone(hotelbean.getId()));
		return"hotel/checkinpage";
	}
	

	

}
