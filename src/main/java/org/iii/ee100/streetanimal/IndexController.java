package org.iii.ee100.streetanimal;

import java.util.ArrayList;
import java.util.List;

import org.iii.ee100.streetanimal.home.entity.Animal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

	@RequestMapping("/")
	public String index(Model model) {
		
		Animal an1 = new Animal();
		an1.setArea("taipei");
		an1.setId(1L);
		
		Animal an2 = new Animal();
		an2.setArea("taoyuan");
		an2.setId(2L);
		
		Animal an3 = new Animal();
		an3.setArea("taoyuan");
		an3.setId(3L);
		
		Animal an4 = new Animal();
		an4.setArea("taoyuan");
		an4.setId(4L);
		
		Animal an5 = new Animal();
		an5.setArea("taoyuan");
		an5.setId(5L);
		
		Animal an6 = new Animal();
		an6.setArea("taoyuan");
		an6.setId(6L);
		
		List<Animal> animals = new ArrayList<>();
		animals.add(an1);
		animals.add(an2);
		animals.add(an3);
		animals.add(an4);
		animals.add(an5);
		animals.add(an6);
		
		model.addAttribute("animals", animals);
		
		return "/index";
	}
	
	@RequestMapping("/hello")
	public String hello() {
		return "/hello";
	}
	
	
}
