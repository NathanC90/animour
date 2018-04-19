package org.iii.ee100.animour.halfway.web;

import java.sql.Timestamp;
import java.util.List;

import org.iii.ee100.animour.halfway.entity.Adoption;
import org.iii.ee100.animour.halfway.entity.Animal;
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

	@RequestMapping(value = "/halfway/adoptionRequest", method = { RequestMethod.POST })
	public String adoptionRequest(@RequestParam(value = "id") Long id, String requestComment, Adoption adoption,
			Model model) {
		// 設定對應動物
		adoption.setAnimal(animalService.getOne(id));
		// 設定動物主人 ID
		adoption.setOwnerId(animalService.getOne(id).getMember().getId());
		// 設定送出時間
		Timestamp ts = new Timestamp(System.currentTimeMillis());
		adoption.setRequestDate(ts);

		// 設定登入的會員
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if (principal instanceof UserDetails && principal instanceof Member ) {
			adoption.setMember((Member) principal); // 在這邊setMember，資料庫會存的事 member_id
			// String account = ((UserDetails)principal).getUsername();
		} else {
			String account = principal.toString();
			System.out.println(account);
		}
		adoptionService.insert(adoption);
		model.addAttribute("inadoption", adoption);

		System.out.println("controller 有被呼叫");
		return "redirect:/halfway";
	}

	// 產生查看認養請求的頁面
	@RequestMapping(value = "/halfway/showAdoption", method = { RequestMethod.GET })
	public String showAdoptionCheck(Model model) {

		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if (principal instanceof UserDetails && principal instanceof Member ) {
			List<Adoption> adoptions = adoptionService.getCheckAdoption(((Member) principal).getId());
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
