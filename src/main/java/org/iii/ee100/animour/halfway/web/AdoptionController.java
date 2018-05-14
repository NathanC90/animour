package org.iii.ee100.animour.halfway.web;

import java.sql.Timestamp;
import java.util.List;

import org.iii.ee100.animour.halfway.entity.Adoption;
import org.iii.ee100.animour.halfway.entity.Animal;
import org.iii.ee100.animour.halfway.model.Quiz;
import org.iii.ee100.animour.halfway.service.AdoptionService;
import org.iii.ee100.animour.halfway.service.AnimalService;
import org.iii.ee100.animour.member.entity.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
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

	// 轉跳至查看認養請求的頁面
	@RequestMapping(value = "/halfway/showAdoption", method = { RequestMethod.GET })
	public String showAdoptionCheck(Model model) {

		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if (principal instanceof UserDetails && principal instanceof Member) {
			List<Adoption> adoptions = adoptionService.getCheckAdoption(((Member) principal).getId());
			model.addAttribute("adoption", adoptions);
		} else {
			String account = principal.toString();
			System.out.println(account);
		}
		return "/halfway/adoptionCheck";
	}

	// 處理認養請求的拒絕或接受
	@RequestMapping(value = "/halfway/adoptionHandle", method = { RequestMethod.GET })
	public String adoptionHandle(@RequestParam(value = "id") Long id,
			@RequestParam(value = "acceptRequest") Boolean acceptRequest, Adoption adoption, Animal an, Model model) {
		if (acceptRequest) {
			try {
				adoption = (Adoption) adoptionService.getOne(id);
				adoption.setAcceptRequest(acceptRequest);
				adoption.setAcceptDate(new Timestamp(System.currentTimeMillis()));
				adoptionService.update(adoption);
				an = ((Adoption) adoptionService.getOne(id)).getAnimal(); // 這裡的id adoption的id
				an.setStatus("認養洽談中");
				animalService.update(an);
			} catch (Exception e) {
			}
			return "redirect:/halfway/showAdoption";
		} else {
			try {
				adoption = (Adoption) adoptionService.getOne(id);
				adoption.setAcceptRequest(acceptRequest);
				adoption.setAcceptDate((new Timestamp(System.currentTimeMillis())));
				adoptionService.update(adoption);
			} catch (Exception e) {
			}
			return "redirect:/halfway/showAdoption";
		}
	}

	// 轉跳至測驗頁面，layout出來，打ajax去呼叫題目
	@RequestMapping(value = "/halfway/toquiz", method = { RequestMethod.GET })
	public String toQuiz(Quiz quiz, Model model) {
		return "/halfway/quiz";
	}

	// 測驗分數處理
	@RequestMapping(value = "/halfway/updatescore", method = { RequestMethod.POST })
	public String updateScore(Model model) {
		
		
		return "/halfway/quiz";
	}

	// 轉跳至飼主同意請求，認養程序開始頁面
	@RequestMapping(value = "/halfway/adoptionDetail", method = { RequestMethod.GET })
	public String toAdoptionDetail(Model model) {

		return "/halfway/adoptionDetail";
	}
	
}
