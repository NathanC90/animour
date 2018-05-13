package org.iii.ee100.animour.halfway.web;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.iii.ee100.animour.halfway.entity.Adoption;
import org.iii.ee100.animour.halfway.entity.Animal;
import org.iii.ee100.animour.halfway.service.AdoptionService;
import org.iii.ee100.animour.halfway.service.AnimalService;
import org.iii.ee100.animour.member.entity.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpMethod;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import allPay.payment.integration.AllInOne;
import allPay.payment.integration.allPayOperator.AllPayFunction;

@Controller
public class AdoptionController {

	@Autowired
	AdoptionService adoptionservice;

	@Autowired
	AnimalService animalservice;

	//送出認養申請
	@RequestMapping(value = "/halfway/adoptionRequest", method = { RequestMethod.POST })
	public String adoptionRequest(@RequestParam(value = "id") Long id, String requestComment, Adoption adoption,
			Model model) {
		// 設定對應動物
		adoption.setAnimal(animalservice.getOne(id));
		// 設定動物主人 ID
		adoption.setOwnerId(animalservice.getOne(id).getMember().getId());
		// 設定送出時間
		Timestamp ts = new Timestamp(System.currentTimeMillis());
		adoption.setRequestDate(ts);

		// 設定登入的會員
		Member current = animalservice.getCurrentMember();
		model.addAttribute("currentMember", current);
		try {
			adoptionservice.insert(adoption);
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("inadoption", adoption);

		return "redirect:/halfway";
	}

	// 產生查看認養請求的頁面
	@RequestMapping(value = "/halfway/showAdoption", method = { RequestMethod.GET })
	public String showAdoptionCheck(Model model) {

		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if (principal instanceof UserDetails && principal instanceof Member) {
			List<Adoption> adoptions = adoptionservice.getCheckAdoption(((Member) principal).getId());
			model.addAttribute("adoption", adoptions);
		} else {
			String account = principal.toString();
			System.out.println(account);
		}
		return "/halfway/adoptionCheck";
	}

	// 處理認養請求的拒絕或接受
	@RequestMapping(value = "/halfway/adoptionCheck", method = { RequestMethod.GET })
	public String adoptionCheck(@RequestParam(value = "id") Long id,
			@RequestParam(value = "acceptRequest") Boolean acceptRequest, Adoption adoption, Animal an, Model model) {
		if (acceptRequest) {
			try {
				adoption = (Adoption) adoptionservice.getOne(id);
				adoption.setAcceptRequest(acceptRequest);
				adoption.setAcceptDate(new Timestamp(System.currentTimeMillis()));
				adoption.setStatus("認養洽談中");
				adoptionservice.update(adoption);
				an = ((Adoption) adoptionservice.getOne(id)).getAnimal(); // 這裡的id adoption的id
				an.setStatus("認養洽談中");
				animalservice.update(an);
			} catch (Exception e) {
			}
			return "redirect:/halfway/showAdoption";
		} else {
			try {
				adoption = (Adoption) adoptionservice.getOne(id);
				adoption.setAcceptRequest(acceptRequest);
				adoption.setAcceptDate((new Timestamp(System.currentTimeMillis())));
				adoption.setStatus("認養被拒");
				adoptionservice.update(adoption);
			} catch (Exception e) {
			}
			return "redirect:/halfway/showAdoption";
		}
	}
	
	@RequestMapping(value = "/halfway/adoptionDetail", method = { RequestMethod.GET })
	public String toAdoptionDetail(Model model) {
		
		
		return "/halfway/adoptionDetail";
	}

}
