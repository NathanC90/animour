package org.iii.ee100.animour.salon.web;

import java.util.List;

import org.iii.ee100.animour.salon.entity.Designer;
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
		return "/salon/reservation";
	}
	
//	@RequestMapping(path= {"/appointment/detail"},method = { RequestMethod.GET })
//	public String reservationDetail(Model model) {
//		List<Reservation> reservation = reservationService.getAll();
//		model.addAttribute("reservation",reservation);
//		return "/salon/reservation";
//	}
	
	@RequestMapping(path= {"/appointment/designer"},method = { RequestMethod.GET })
	public String reservationDesigner(Model model) {
		List<Reservation> reservationDesigner = reservationService.getAll();
		model.addAttribute("reservationDesigner",reservationDesigner);
		return "/salon/chooseDesigner";
	}
	
	@RequestMapping(path= {"/appointment/showFreeTime"},method = { RequestMethod.GET })
	public String showReservationTime(Model model,Designer designer,Long id) {
		List<Designer> showReservationTime = reservationService.getAllFreeTime();
	//	Designer getId = reservationService.getOne(id);
	//	model.addAttribute("chooseId",getId);
		model.addAttribute("showReservationTime",showReservationTime);
		return "/salon/showFreeTime";
	}
	
	@RequestMapping(path= {"/appointment/showSuccess"},method = { RequestMethod.GET })
	public String showSuccess(Model model,Designer designer,Long id) {
		List<Designer> showSuccess = reservationService.getAllFreeTime();
		Designer getId = reservationService.getOne(id);
			model.addAttribute("chooseId",getId);
		
		
		reservationService.updateToZero(designer);
		model.addAttribute("showSuccess",showSuccess);
		return "/salon/successReservation";
	}
	@RequestMapping(path= {"/appointment/testForm"},method = { RequestMethod.GET })
	public String TestIndex(Model model,Designer designer,Long id) {
		//List<Designer> selectOne = reservationService.getAllFreeTime();
		
		//designer =reservationService.getOne(id);
	    //model.addAttribute("selectOne",designer);
		return "/salon/InsertAnimalForm";
	}
	
	@RequestMapping(path= {"/appointment/testSelectForm"},method = { RequestMethod.GET })
	public String selectOne(Model model,Long id) {
		Designer selectOne = reservationService.getOne(id);
		model.addAttribute("selectOne",selectOne);
		
		return "/salon/test";
		
	}
	
	@RequestMapping(path= {"/appointment/testUpdateForm"},method = { RequestMethod.POST })
	public String updateOne(Model model,Long id,Designer designer) {
		Designer getId = reservationService.getOne(id);
		reservationService.updateToZero(getId);
		model.addAttribute("updateOne",getId);
		model.addAttribute("newInformation",designer);
		
		return "/salon/test";
		
	}
	
//	@RequestMapping(path= {"/appointment/testForm"},method = { RequestMethod.GET })
//	public String select(Model model,Designer designer,Long id) {
//		//List<Designer> selectOne = reservationService.getAllFreeTime();
//		
//		designer =reservationService.getOne(id);
//		model.addAttribute("selectOne",designer);
//		return "/salon/InsertAnimalForm";
//	}
	
	
	
	

	

}
