package org.iii.ee100.animour.salon.web;

import org.iii.ee100.animour.salon.service.ReservationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ReservationController {
	
	@Autowired
	private ReservationService reservationService;
	
	@RequestMapping(path= {"/appointment"},method = { RequestMethod.POST })
	public String reservationTime(Model model) {
		
		return "salon/reservation";
		
	}
	

}
