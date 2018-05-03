package org.iii.ee100.animour.salon.web;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.iii.ee100.animour.forum.entity.Category;
import org.iii.ee100.animour.salon.dao.ReservationDao;
import org.iii.ee100.animour.salon.entity.Designer;
import org.iii.ee100.animour.salon.entity.Reservation;
import org.iii.ee100.animour.salon.entity.ReservationTime;
import org.iii.ee100.animour.salon.entity.ServiceContent;
import org.iii.ee100.animour.salon.service.ReservationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import ch.qos.logback.core.net.SyslogOutputStream;

@Controller
public class ReservationController {

	@Autowired
	private ReservationService reservationService;
	


	@RequestMapping(path = { "/reservation" }, method = { RequestMethod.GET })
	public String reservationTime(Model model) {
		Reservation reservation = new Reservation();
		model.addAttribute("reservation", reservation);		
		return "/salon/insertReservationForm";
	}
	@RequestMapping(path = { "/editReservation" }, method = { RequestMethod.GET })
	public String editReservation(Model model) {
		ArrayList<Reservation> allReservationList= reservationService.getAllContent();
		model.addAttribute("allReservationList", allReservationList);		
		return "/salon/editReservation";
	}
	@RequestMapping(path = { "/reservation" }, method = { RequestMethod.POST })
	public String reservationTimeInsert(@ModelAttribute("reservation")Reservation reservation,Model model) throws Exception {
		model.addAttribute("reservation", reservationService.insertReservation(reservation));
		return "/salon/checkReservationOrder";
	}
	
	@ModelAttribute("allContent")
	public Map<String,String> getAllContent() {
		Map<String,String> contentMaps = new HashMap<>();
		List<ServiceContent>serviceContents=reservationService.getAllServiceContent();
		for(ServiceContent serviceContent:serviceContents) {
			contentMaps.put(serviceContent.getContent(), serviceContent.getContent());
		}
		return contentMaps;
	
	}

	@ModelAttribute("allDate")
	public Map<Long,Date> getAllDate() throws Exception {
		Map<Long,Date> DateMaps = new HashMap<>();
		List<Reservation>reservationDateList=reservationService.getAll();
		for(Reservation reservation:reservationDateList) {
			DateMaps.put(reservation.getId(), reservation.getReservationDate());
		}
		return DateMaps;
		
	}
	@ModelAttribute("allDesigner")
	public Map<String,String> getAllDesigner() throws Exception {
		Map<String,String> DateMaps = new HashMap<>();
		List<Designer>DesignerList=reservationService.getAllDesigner();
		for(Designer designer:DesignerList) {
			DateMaps.put(designer.getDesigner(),designer.getDesigner());
		}
		return DateMaps;
		
	}
	

//	 @RequestMapping(path= {"/reservation/success"},method = { RequestMethod.GET })
//	 public String reservationDetail(Model model) {
//	 List<Reservation> reservation = reservationService.getAll();
//	 model.addAttribute("reservation",reservation);
//	 return "/salon/reservation";
//	 }
	
	
	//return designer 
//	@RequestMapping(path = { "/appointment/designer" }, method = { RequestMethod.GET })
//	public String reservationDesigner(Model model,Designer designer) {
//		
//		
//		
//		List<Reservation> reservationDesigner = reservationService.getAll();
//		model.addAttribute("reservationDesigner", reservationDesigner);
//		return "/salon/chooseDesigner";
//	}

	//return show all free time page
//	@RequestMapping(path = { "/appointment/showFreeTime" }, method = { RequestMethod.GET })
//	public String showReservationTime(Model model, Designer designer, Long id) {
//		List<Designer> showReservationTime = reservationService.getAllFreeTime();
//		// Designer getId = reservationService.getOne(id);
//		// model.addAttribute("chooseId",getId);
//		model.addAttribute("showReservationTime", showReservationTime);
//		return "/salon/showFreeTime";
//	}
	
	//選取服務種類
	@RequestMapping(path = { "/appointment/firstPage" }, method = { RequestMethod.GET })
	public String showServiceType(@RequestParam(value = "page", defaultValue = "1") Integer pageNumber,
			@RequestParam(value = "size", defaultValue = "8") Integer pageSize,Model model,Long id) {
////		Page<ServiceContent>page =reservationService.getServiceContentPage(pageNumber, pageSize);
////		model.addAttribute("serviceContentPage", page);
//		
		ArrayList<ServiceContent> allType= reservationService.getAllServiceContent();
		model.addAttribute("allType",allType);
		return "/salon/reservation";		
	}
//	@RequestMapping(path = { "/appointment/test2Page" }, method = { RequestMethod.GET })
//	public String showServiceTypeTest(@RequestParam(value = "page", defaultValue = "1") Integer pageNumber,
//			@RequestParam(value = "size", defaultValue = "8") Integer pageSize,Model model) {
////		Page<ServiceContent>page =reservationService.getServiceContentPage(pageNumber, pageSize);
////		model.addAttribute("serviceContentPage", page);
////		ArrayList<ServiceContent> allType= reservationService.getAllServiceContent();
////		model.addAttribute("allType",allType);
//		return "/salon/test2";		
//	}

	
	
	//return success page
//	@RequestMapping(path = { "/appointment/showSuccess" }, method = { RequestMethod.GET })
//	public String showSuccess(Model model, Designer designer, Long id) {
//		List<Designer> showSuccess = reservationService.getAllFreeTime();
//		
//	//	Designer UpdateDesigner =reservationService.getOne(id);
//	//	model.addAttribute("chooseId", getId);
//
//	//	reservationService.updateToZero(UpdateDesigner);
//		model.addAttribute("showSuccess", showSuccess);
//		return "/salon/successReservation";
//	}

//	@RequestMapping(path = { "/appointment/testForm" }, method = { RequestMethod.GET })
//	public String TestIndex(Model model, Designer designer, Long id) {
//		// List<Designer> selectOne = reservationService.getAllFreeTime();
//
//		// designer =reservationService.getOne(id);
//		// model.addAttribute("selectOne",designer);
//		return "/salon/InsertAnimalForm";
//	}

//	@RequestMapping(path = { "/appointment/testSelectForm" }, method = { RequestMethod.GET })
//	public String selectOne(Model model, Long id) {
//		Designer selectOne = reservationService.getOne(id);
//		model.addAttribute("selectOne", selectOne);
//
//		return "/salon/test";
//
//	}



	// @RequestMapping(path= {"/appointment/testForm"},method = { RequestMethod.GET
	// })
	// public String select(Model model,Designer designer,Long id) {
	// //List<Designer> selectOne = reservationService.getAllFreeTime();
	//
	// designer =reservationService.getOne(id);
	// model.addAttribute("selectOne",designer);
	// return "/salon/InsertAnimalForm";
	// }

}
