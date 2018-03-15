package org.iii.ee100.animour;

import java.util.ArrayList;
import java.util.List;

import org.iii.ee100.animour.home.entity.Animal;
import org.iii.ee100.animour.home.service.AnimalServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

	//@Autowired
	AnimalServiceImpl as1 ;
	
	@RequestMapping("/")
	public String index(Model model) {
		
		List<Animal> animals = as1.getAll();
		model.addAttribute("animals", animals);
		
		
		
		
		
		
		return "/index";
		
//		Animal an1 = new Animal();
//		an1.setCity("taipei");
//		an1.setAnimalId(1L);
//		
//		Animal an2 = new Animal();
//		an2.setCity("taoyuan");
//		an2.setAnimalId(2L);
//		
//		Animal an3 = new Animal();
//		an3.setCity("taoyuan");
//		an3.setAnimalId(3L);
//		
//		Animal an4 = new Animal();
//		an4.setCity("taoyuan");
//		an4.setAnimalId(4L);
//		
//		Animal an5 = new Animal();
//		an5.setCity("taoyuan");
//		an5.setAnimalId(5L);
//		
//		Animal an6 = new Animal();
//		an6.setCity("taoyuan");
//		an6.setAnimalId(6L);
//		

//		animals.add(an1);
//		animals.add(an2);
//		animals.add(an3);
//		animals.add(an4);
//		animals.add(an5);
//		animals.add(an6);
		

	}
	
	@RequestMapping("/hello")
	public String hello() {
		return "/hello";
	}
	
	
}
