package org.iii.ee100.animour.salon.web;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.iii.ee100.animour.common.entity.PageInfo;
import org.iii.ee100.animour.common.model.PageForAnimour;
import org.iii.ee100.animour.halfway.entity.Animal;
import org.iii.ee100.animour.salon.entity.Designer;
import org.iii.ee100.animour.salon.entity.Reservation;
import org.iii.ee100.animour.salon.entity.ServiceContent;
import org.iii.ee100.animour.salon.service.ReservationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

@RestController
@RequestMapping("/reservations")
public class ReservationRestController {

	@Autowired
	ReservationService reservationService;
	
	//findAll
	@RequestMapping(method = RequestMethod.GET,produces = { "application/json"})
	public List<Reservation> reservationForm(PageForAnimour pageForAnimour) {
		 Page<Reservation> page = reservationService.getReservationPage(pageForAnimour);
		List<Reservation> ReservationList = page.getContent();
		return ReservationList;

	}
	//insertId
	@RequestMapping(method = RequestMethod.POST,consumes = { "application/json"})
	public Reservation insertReservation(@Valid @RequestBody Reservation reservation) {
	    return reservationService.insertReservation(reservation);
	}
	//getId
	@RequestMapping(value="/reservation/{id}",method = RequestMethod.GET,produces = { "application/json"})
	public Reservation getReservationById(@PathVariable(value = "id") Long reservationId) {
	    return reservationService.getOne(reservationId);
	}
	
	// Update a Reservation
	@RequestMapping(value="/reservation/{id}",method = RequestMethod.PUT,consumes = { "application/json"})
	public Reservation updateReservation(@PathVariable(value = "id") Long reservationId,
	                                        @Valid @RequestBody Reservation reservationDetails,Designer designer,ServiceContent serviceContent) {

		Reservation reservation = reservationService.getOne(reservationId);
		reservation.setPrice(reservationDetails.getPrice());
		reservation.setDesigner(reservationDetails.getDesigner());
		reservation.setContent(reservationDetails.getContent());
		reservation.setReservationDate(reservationDetails.getReservationDate());
		reservation.setTotalTime(reservationDetails.getTotalTime());
		
		Reservation updateReservation = reservationService.insertReservation(reservation);
	    return updateReservation;
	}

	@RequestMapping(value = { "/reservation/{id}" }, method = RequestMethod.DELETE)
	public ResponseEntity<?> deleteReservation(@PathVariable(value = "id") Long reservationId) {
		Reservation reservation = reservationService.getOne(reservationId);
		reservationService.deleteReservation(reservation);
		return ResponseEntity.ok().build();
	}
}
