package org.iii.ee100.animour.salon.web;

import java.text.ParseException;
import java.util.List;

import javax.validation.Valid;

import org.iii.ee100.animour.member.service.MemberService;
import org.iii.ee100.animour.salon.entity.Designer;
import org.iii.ee100.animour.salon.entity.Reservation;
import org.iii.ee100.animour.salon.entity.ReservationTime;
import org.iii.ee100.animour.salon.entity.ServiceContent;
import org.iii.ee100.animour.salon.service.ReservationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/reservationForms")
public class FormsRestController {
	
	@Autowired
	ReservationService reservationService;
	@Autowired
	MemberService memberService;
	
	@RequestMapping(value="/Reservation",method = RequestMethod.GET,produces = { "application/json"})
	public List<Reservation> Reservation(){
		return reservationService.getAllReservationContent();
		
	}
	
//	@RequestMapping(value="/ReservationDate",method = RequestMethod.GET,produces = { "application/json"})
//	public List<ReservationDate> ReservationDate(){
//		return null;
//		
//	}

	
	@RequestMapping(value="/getServiceCotent",method = RequestMethod.GET,produces = { "application/json"})
	public List<ServiceContent> getServiceCotent(){
		return reservationService.getAllServiceContent();
		
	}
	@RequestMapping(value="/getTimeSection",method = RequestMethod.GET,produces = { "application/json"})
	public List<ReservationTime> getTimeSection(){
		return reservationService.getAllReservationTime();
		
	}
	@RequestMapping(value="/getDesigner",method = RequestMethod.GET,produces = { "application/json"})
	public List<Designer> getDesigner(){
		return reservationService.getAllDesigner();
		
	}
	
	
	@RequestMapping(method = RequestMethod.POST,produces = { "application/json"})
	public ResponseEntity<?> insertReservation(@Valid @RequestBody Reservation reservation) throws ParseException {
//		Member currentMember = memberService.getNewCurrentMember();
//		reservation.setMember(currentMember);
		
		 reservationService.repeateOrNot(reservation);

		return new ResponseEntity<Reservation>(reservation, HttpStatus.OK);
	}
	

}
