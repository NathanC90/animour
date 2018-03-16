package org.iii.ee100.animour.hospital.web;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import org.iii.ee100.animour.hospital.entity.Hospital;
import org.iii.ee100.animour.hospital.service.HospitalServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HospitalController {

	@Autowired
	private HospitalServiceImpl hosp;
	
	
	@RequestMapping("/hospital/index")
	public String index() {

		return "/hospital/InsertHospitalForm";
	}
	
	@RequestMapping("/insert")
	public String inserHospital(HttpServletRequest request) throws SQLException {
		Hospital hospital =new Hospital();
		
		hospital.setVeterinaryHospId(request.getParameter("vethospid"));
		hospital.setVeterinaryHospName(request.getParameter("vethospname"));
		hospital.setVeterinaryHospTel(request.getParameter("vethospotel"));
		hospital.setVeterinaryHospAddr(request.getParameter("vethospaddr"));
		
		hosp.insert(hospital);
		request.setAttribute("insert", hospital);
		
		return "/hospital/hospitalist";
	}
	
	
	@RequestMapping("/update")
	public String updateHospital(HttpServletRequest request) {
		Hospital hospital =new Hospital();
		
		hospital.setVeterinaryHospId(request.getParameter("vethospid"));
		hospital.setVeterinaryHospName(request.getParameter("vethospname"));
		hospital.setVeterinaryHospTel(request.getParameter("vethospotel"));
		hospital.setVeterinaryHospAddr(request.getParameter("vethospaddr"));
		
		hosp.update(hospital);
		request.setAttribute("update", hospital);
		
		return "/hospital/hospitalist";
	}
	
	
}
