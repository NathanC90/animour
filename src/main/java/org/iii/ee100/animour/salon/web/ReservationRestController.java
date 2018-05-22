package org.iii.ee100.animour.salon.web;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.iii.ee100.animour.common.model.PageForAnimour;
import org.iii.ee100.animour.member.entity.Member;
import org.iii.ee100.animour.member.service.MemberService;
import org.iii.ee100.animour.salon.entity.Designer;
import org.iii.ee100.animour.salon.entity.Reservation;
import org.iii.ee100.animour.salon.entity.ServiceContent;
import org.iii.ee100.animour.salon.service.ReservationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/reservations")
public class ReservationRestController {

	@Autowired
	ReservationService reservationService;

	@Autowired
	MemberService memberService;

	// findAll
	@RequestMapping(method = RequestMethod.GET, produces = { "application/json" })
	public List<Reservation> reservationForm(PageForAnimour pageForAnimour){
		List<Reservation> all = null;
		try {
			all = reservationService.getAll();
		} catch (Exception e) {
		}
		for(Reservation reservation:all) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			String date=sdf.format(reservation.getReservationDate());
			System.out.println("bbbbbb"+date.getClass());
			reservation.setAppointDate(date);
		}
		Page<Reservation> page = reservationService.getReservationPage(pageForAnimour);
		all = page.getContent();
		System.out.println("aaaaa"+all.get(0).getAppointDate().getClass());
		return all;

	}

	// post
	@RequestMapping(method = RequestMethod.POST, consumes = { "application/json" })
	public Reservation insertReservation(@Valid @RequestBody Reservation reservation) {
		return reservationService.insertReservation(reservation);
	}

	// getId
	@RequestMapping(value = "/reservation/{id}", method = RequestMethod.GET, produces = { "application/json" })
	public Reservation getReservationById(@PathVariable(value = "id") Long reservationId) {
		return reservationService.getOne(reservationId);
	}

	// insert a Reservation by id
	// 付款成功不能改資料
	@RequestMapping(value = "/reservation/{id}", method = RequestMethod.POST)
	public ResponseEntity<?> updateReservation(@PathVariable(value = "id")Long id, Reservation reservation) throws ParseException {
//		System.out.println("memberIdaaa"+memberId);
//		reservation.setMember(memberService.getOne(memberId));
//		 Reservation changeContent =reservationService.getOne(id);
//		 changeContent.setContent(reservation.getContent());
//		 changeContent.setDesigner(reservation.getDesigner());
//		 changeContent.setPayment(reservation.getPayment());
//		 changeContent.setFrontTime(reservation.getFrontTime());
//		 changeContent.setPrice(reservation.getPrice());
//		 changeContent.setTotalTime(reservation.getTotalTime());
//		 changeContent.setReservationDate(reservation.getReservationDate());
		reservation.getId();
			reservation.getAppointDate();
		 	System.out.println("aaaaaccccc"+reservation.getAppointDate());
		 	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
//		 	System.out.println("id"+id+"ddddd"+reservation.getAppointDate());
		 	Date date = sdf.parse(reservation.getAppointDate());
//		 	System.out.println("ccccc"+date);
	 	reservation.setReservationDate(date);
		 		reservationService.insertReservation(reservation);
		return new ResponseEntity<Reservation>(reservation, HttpStatus.OK);

	}
//	@RequesPramm , 不能接
// @
//	@RequestMapping(value = "/member/{id}", method = RequestMethod.PUT, consumes = { "application/json" })
//	public ResponseEntity<?> updateMember(@PathVariable(value = "id") Long id,
//			@Valid @RequestBody接Jonson Member member) {
//		memberService.insert(memberService.getOne(id));
//		return new ResponseEntity<Member>(member, HttpStatus.OK);
//
//	}

	@RequestMapping(value = { "/reservation/{id}" }, method = RequestMethod.DELETE)
	public ResponseEntity<?> deleteReservation(@PathVariable(value = "id") Long reservationId) {
		Reservation reservation = reservationService.getOne(reservationId);
		reservationService.deleteReservation(reservation);
		return ResponseEntity.ok().build();
	}
}
