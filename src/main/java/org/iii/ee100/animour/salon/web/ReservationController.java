package org.iii.ee100.animour.salon.web;

import java.util.List;

import org.iii.ee100.animour.salon.entity.Reservation;
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
	
	@RequestMapping(path= {"/appointment"},method = { RequestMethod.GET })
	public String reservationTime(Model model) {
		List<Reservation> reservation = reservationService.getAll();
		model.addAttribute("reservation",reservation);
		return "salon/reservation";
	}
	

	

}
