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
	@RequestMapping(path= {"/appointment/detail"},method = { RequestMethod.GET })
	public String reservationDetail(Model model) {
		List<Reservation> reservation = reservationService.getAll();
		model.addAttribute("reservation",reservation);
		return "salon/reservation";
	}
	@RequestMapping(path= {"/appointment/designer"},method = { RequestMethod.GET })
	public String reservationDesigner(Model model) {
		List<Reservation> reservationDesigner = reservationService.getAll();
		model.addAttribute("reservationDesigner",reservationDesigner);
		return "salon/chooseDesigner";
	}
	@RequestMapping(path= {"/appointment/showFreeTime"},method = { RequestMethod.GET })
	public String showReservationTime(Model model) {
		List<Reservation> showReservationTime = reservationService.getAll();
		model.addAttribute("showReservationTime",showReservationTime);
		return "salon/showFreeTime";
	}
	
	

	

}
