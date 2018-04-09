package org.iii.ee100.animour.salon.web;

import org.iii.ee100.animour.salon.service.SalonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SalonController {

	@Autowired
	private  SalonService salonService;
	
	@RequestMapping(path= {"salon/getOne"},method = { RequestMethod.POST } ) 
	public String select(Model model) {
		
		return "salon/salonIndex";
	}
}
