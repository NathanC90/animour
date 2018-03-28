package org.iii.ee100.animour.hospital.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.iii.ee100.animour.hospital.entity.Hospital;
import org.iii.ee100.animour.hospital.service.HospitalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HospitalIndexController {

	@Autowired
	HospitalService hospitalService;
	
	

	@RequestMapping("/hospitalindex")
	public String index2(Model model) {
		List<Hospital> hospital =hospitalService.getAll();
		model.addAttribute("alllist", hospital);		
		return "/hospital/hospitalindex";
	}
	
	

	
	
}
