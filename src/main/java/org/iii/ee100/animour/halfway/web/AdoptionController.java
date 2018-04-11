package org.iii.ee100.animour.halfway.web;

import java.sql.Timestamp;
import java.util.List;

import org.iii.ee100.animour.halfway.entity.Adoption;
import org.iii.ee100.animour.halfway.entity.Animal;
import org.iii.ee100.animour.halfway.service.AdoptionService;
import org.iii.ee100.animour.halfway.service.AnimalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AdoptionController {

	@Autowired
	AdoptionService adoptionService;

	@Autowired
	AnimalService animalService;

	@RequestMapping(value = "/halfway/adoptionRequest", method = { RequestMethod.POST })
	public String adoptionRequest(@RequestParam(value = "id") Long id, String requestComment, Adoption adoption,
			Model model) {

		adoption.setAnimal(animalService.getOne(id));
		Timestamp ts = new Timestamp(System.currentTimeMillis());
		adoption.setRequestDate(ts);
		adoptionService.insert(adoption);
		model.addAttribute("inadoption", adoption);

		System.out.println("controller 有被呼叫");
		return "redirect:/halfway";
	}

	// 產生查看認養請求的頁面
	@RequestMapping(value = "/halfway/showAdoption", method = { RequestMethod.GET })
	public String showAdoptionCheck(Model model) {
		List<Adoption> adoptions = adoptionService.getCheckAdoption();
		model.addAttribute("adoption", adoptions);

		return "/halfway/adoptionCheck";
	}

	// 處理認養請求的拒絕或接受
	@RequestMapping(value = "/halfway/adoptionCheck", method = { RequestMethod.GET })
	public String adoptionCheck(@RequestParam(value = "id") Long id,
			@RequestParam(value = "acceptRequest") Boolean acceptRequest,Adoption adoption, Animal an, Model model) {
		
		System.out.println("Controller有被呼叫");
		if (acceptRequest) {
			
			adoption = adoptionService.getOne(id);
			adoption.setAcceptRequest(acceptRequest);
			adoption.setOrderDate(new Timestamp(System.currentTimeMillis()));
			adoption.setStatus("認養洽談中");
			adoptionService.update(adoption);
			
			an = adoptionService.getOne(id).getAnimal(); // 這裡的id adoption的id
			an.setStatus("認養洽談中");
			animalService.update(an);
			
			return "redirect:/halfway/showAdoption";
		} else {
			adoption = adoptionService.getOne(id);
			adoption.setAcceptRequest(acceptRequest);
			adoption.setOrderDate(new Timestamp(System.currentTimeMillis()));
			adoption.setStatus("認養被拒");
			adoptionService.update(adoption);
			
			return "redirect:/halfway/showAdoption";
		}
	}

}
