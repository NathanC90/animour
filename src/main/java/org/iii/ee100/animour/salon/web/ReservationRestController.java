package org.iii.ee100.animour.salon.web;

import java.util.List;

import org.iii.ee100.animour.common.entity.PageInfo;
import org.iii.ee100.animour.salon.entity.Reservation;
import org.iii.ee100.animour.salon.service.ReservationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/reservations")
public class ReservationRestController {

	@Autowired
	ReservationService reservationService;
	PageInfo defaultPageInfo = new PageInfo(1, 2);

	@RequestMapping(method = RequestMethod.GET,produces= {"application/json"})
	public List<Reservation> reservationForm(PageInfo pageInfo) {
		Page<Reservation> pgae = reservationService.getReservationPage(pageInfo);
		List<Reservation> ReservationList = page.getContent();
		return ReservationList;

	}

}
