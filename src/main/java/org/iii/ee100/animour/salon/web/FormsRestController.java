package org.iii.ee100.animour.salon.web;

import java.util.List;

import javax.validation.Valid;

import org.iii.ee100.animour.salon.entity.Reservation;
import org.iii.ee100.animour.salon.entity.ServiceContent;
import org.iii.ee100.animour.salon.service.ReservationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/reservationForms")
public class FormsRestController {
	
	@Autowired
	ReservationService reservationService;
	
	@RequestMapping(value="/getServiceCotent",method = RequestMethod.GET,produces = { "application/json"})
	public List<ServiceContent> getServiceCotent(){
		return reservationService.getAllServiceContent();
		
	}
	
	@RequestMapping(method = RequestMethod.POST,produces = { "application/json"})
	public Reservation insertReservation(@Valid @RequestBody Reservation reservation) {
	    return reservationService.insertReservation(reservation);
	}
	

}
