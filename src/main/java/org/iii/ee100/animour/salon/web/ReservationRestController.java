package org.iii.ee100.animour.salon.web;

import java.util.List;

import org.iii.ee100.animour.forum.entity.Article;
import org.iii.ee100.animour.salon.entity.Designer;
import org.iii.ee100.animour.salon.service.ReservationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/designers")
public class ReservationRestController {

	@Autowired
	ReservationService reservationService;

	@RequestMapping(method = RequestMethod.GET,produces= {"application/json"})
	public List<Designer> findAll() {
		List<Designer> DesignerList = reservationService.getAllFreeTime();
		return DesignerList;

	}

}
