package org.iii.ee100.animour.halfway.web;

import java.sql.Timestamp;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AnimalController {

	@Autowired
	org.iii.ee100.animour.halfway.service.AnimalService animalservice;

	@RequestMapping("/halfway/index")
	public String index(Model model) {

		return "/halfway/InsertAnimalForm";
	}

	@RequestMapping("/insertAnimal.do")
	public String insertAnimal(HttpServletRequest request) {
		org.iii.ee100.animour.halfway.entity.Animal an = new org.iii.ee100.animour.halfway.entity.Animal();

		an.setName(request.getParameter("name"));
		an.setSpecie(request.getParameter("specie"));
		an.setColor(request.getParameter("colo	as r"));
		an.setFound(java.sql.Date.valueOf(request.getParameter("found")));
		an.setCity(request.getParameter("city"));
		an.setDistrict(request.getParameter("district"));

		Timestamp ts = new Timestamp(System.currentTimeMillis());
		an.setUpload(ts);
		animalservice.insert(an);
		request.setAttribute("inanimal", an);

		return "/halfway/FindAnimal";
	}

	@RequestMapping("/updateAnimal.do")
	public String updateAnimal(HttpServletRequest request) {
		org.iii.ee100.animour.halfway.entity.Animal an = animalservice.getOne(Long.valueOf(request.getParameter("animalId")));
		if (an != null) {
			an.setName(request.getParameter("upname"));
			an.setSpecie(request.getParameter("upspecie"));
			an.setColor(request.getParameter("upcolor"));
			an.setFound(java.sql.Date.valueOf(request.getParameter("upfound")));
			an.setCity(request.getParameter("upcity"));
			an.setDistrict(request.getParameter("updistrict"));

			Timestamp ts = new Timestamp(System.currentTimeMillis());
			an.setUpload(ts);
			animalservice.update(an);
			request.setAttribute("upanimal", an);
		}
		return "/halfway/FindAnimal";
	}

	@RequestMapping("/deleteAnimal.do")
	public String deleteAnimal(HttpServletRequest request) {
		org.iii.ee100.animour.halfway.entity.Animal an = animalservice.getOne(Long.valueOf(request.getParameter("animalId")));
		if (an != null) {
			animalservice.delete(Long.valueOf(request.getParameter("animalId")));
			request.setAttribute("dlanimalId", request.getParameter("animalId"));
		}
		return "/halfway/FindAnimal";
	}

	@RequestMapping("/selectAllAnimal.do")
	public String findAllAnimal(Model model) {

		List<org.iii.ee100.animour.halfway.entity.Animal> animals = animalservice.getAll();
		model.addAttribute("animals", animals);

		return "/halfway/FindAnimal";
	}

	@RequestMapping("/selectOneAnimal.do")
	public String findOneAnimal(HttpServletRequest request) {
		org.iii.ee100.animour.halfway.entity.Animal an = animalservice.getOne(Long.valueOf(request.getParameter("animalId")));
		if (an != null) {
			request.setAttribute("animal", an);
		}
		return "/halfway/FindAnimal";
	}

}
