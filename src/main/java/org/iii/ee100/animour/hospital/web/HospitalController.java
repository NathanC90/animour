package org.iii.ee100.animour.hospital.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.iii.ee100.animour.hospital.entity.Hospital;
import org.iii.ee100.animour.hospital.service.HospitalServiceImpl;
import org.iii.ee100.animour.shopping.entity.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HospitalController {

	@Autowired
	HospitalServiceImpl hosp;
	
	
	@RequestMapping("/hospitalform")
	public String index(Model model) {

		return "/hospital/form";
	}
	
	@RequestMapping(path= {"/selectonehospital"},method={RequestMethod.POST})
	public String selectOneHospital(HttpServletRequest request, Model model) {
		model.addAttribute("onehospital", hosp.getOne(request.getParameter("hospitalid")));
		return "/hospital/hospitalist";
	}

	@RequestMapping("/selectallhospital")
	public String findAllHospital(Model model)  {
		List<Hospital> hospital =hosp.getAll();
		model.addAttribute("alllist", hospital);		
		return "/hospital/hospitalist";
	}	
	


	@RequestMapping(path= {"/inserthospital"}, method={RequestMethod.POST})
	public String insertHospital(Hospital hospitalbean, Model model) {
		hosp.insert(hospitalbean);
		model.addAttribute("insert", hospitalbean);
		return "/hospital/hospitalist";
	}
	
	
	@RequestMapping(path= {"/deletehospital"}, method={RequestMethod.POST})
	public String deleteOneProduct(Hospital hospitalbean, Model model) {
		hosp.delete(hospitalbean.getVeterinaryHospId());
		model.addAttribute("delete", hospitalbean.getVeterinaryHospId());
		return "/hospital/hospitalist";
	}
	

	
	@RequestMapping(path= {"/updatehospital"}, method={RequestMethod.POST})
	public String updateProduct(Hospital hospitalbean, Model model) {
		hosp.update(hospitalbean);
		model.addAttribute("update", hospitalbean);
		return "/hospital/hospitalist";
	}
	

	
	
}
