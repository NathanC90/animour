package org.iii.ee100.animour.salon.web;

import java.util.List;

import org.iii.ee100.animour.salon.entity.Salon;
import org.iii.ee100.animour.salon.service.ReservationService;
import org.iii.ee100.animour.salon.service.SalonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SalonController {

	@Autowired
	private SalonService salonService;
	
	
	@RequestMapping(path= {"salon/getAll"},method = { RequestMethod.GET } ) 
	public String select(Model model) {
		
		List<Salon> Salon = salonService.getAll();
		model.addAttribute("Salon",Salon);
		return "/salon/salonIndex";
	}
	
	
}
