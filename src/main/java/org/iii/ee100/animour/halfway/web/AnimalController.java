package org.iii.ee100.animour.halfway.web;

import java.sql.Timestamp;
import org.iii.ee100.animour.halfway.entity.Animal;
import org.iii.ee100.animour.halfway.service.AnimalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AnimalController {

	@Autowired
	AnimalService animalservice;

	@RequestMapping(path = { "/halfway/index" }, method = { RequestMethod.GET })
	public String index(Model model) {

		return "/halfway/InsertAnimalForm";
	}

	@RequestMapping(path = { "/insertAnimal" }, method = { RequestMethod.POST })
	public String insertAnimal(Animal an, Model model) {
		Timestamp ts = new Timestamp(System.currentTimeMillis());
		an.setUpload(ts);
		animalservice.insert(an);
		model.addAttribute("inanimal", an);

		return "/halfway/FindAnimal";
	}

	@RequestMapping(path = { "/updateAnimal" }, method = { RequestMethod.POST })
	public String updateAnimal(Animal an, Model model) {
		if (an != null) {
			Timestamp ts = new Timestamp(System.currentTimeMillis());
			an.setUpload(ts);
			animalservice.update(an);
			model.addAttribute("upanimal", an);
		}
		return "/halfway/FindAnimal";
	}

	@RequestMapping(path = { "/deleteAnimal" }, method = { RequestMethod.GET })
	public String deleteAnimal(Animal an, Model model) {
		an = animalservice.getOne(an.getId());
		if (an != null) {
			animalservice.delete(an.getId());
			model.addAttribute("dlanimalId", an.getId());
		}
		return "/halfway/FindAnimal";
	}

	@RequestMapping("/selectAllAnimal")
	public String findAllAnimal(Model model) {
		return "/halfway/FindAnimal";
	}

	@RequestMapping("/selectOneAnimal")
	public String findOneAnimal(Animal an, Model model) {
		an = animalservice.getOne(an.getId());
		if (an != null) {
			model.addAttribute("animal", an);
		}
		return "/halfway/FindAnimal";
	}

}
