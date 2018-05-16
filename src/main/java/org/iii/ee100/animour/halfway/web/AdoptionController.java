package org.iii.ee100.animour.halfway.web;

import java.sql.Timestamp;
import java.util.List;

import org.iii.ee100.animour.halfway.entity.AcceptRecord;
import org.iii.ee100.animour.halfway.entity.Adoption;
import org.iii.ee100.animour.halfway.entity.Animal;
import org.iii.ee100.animour.halfway.service.AcceptRecordService;
import org.iii.ee100.animour.halfway.service.AdoptionService;
import org.iii.ee100.animour.halfway.service.AnimalService;
import org.iii.ee100.animour.member.entity.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AdoptionController {

	@Autowired
	AdoptionService adoptionService;

	@Autowired
	AnimalService animalService;
	
	@Autowired
	AcceptRecordService acceptRecordService;

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
			@RequestParam(value = "acceptRequest") Boolean acceptRequest, Adoption adoption, Animal an, AcceptRecord acceptRecord) {
		if (acceptRequest) {
			// 認養請求狀態更新
			adoption = adoptionService.getOne(id);
			adoption.setAcceptRequest(acceptRequest);
			adoption.setAcceptDate(new Timestamp(System.currentTimeMillis()));
			adoptionService.update(adoption);
			
			// 動物狀態更新
			an = adoption.getAnimal(); // 這裡的id adoption的id
			an.setStatus("認養洽談中");
			animalService.update(an);
			
			// 同時新增成交紀錄物件
			acceptRecord.setStartDate(adoption.getAcceptDate());
			acceptRecord.setEndDate(acceptRecordService.calEndDate(acceptRecord.getStartDate()));
			acceptRecord.setAdoption(adoption);
			acceptRecordService.insert(acceptRecord);
			return "redirect:/halfway/showAdoption";
		} else {
			adoption = adoptionService.getOne(id);
			adoption.setAcceptRequest(acceptRequest);
			adoption.setAcceptDate((new Timestamp(System.currentTimeMillis())));
			adoptionService.update(adoption);
			return "redirect:/halfway/showAdoption";
		}
	}

	// 轉跳至測驗頁面，layout出來，打ajax去呼叫題目
	@RequestMapping(value = "/halfway/toquiz/{id}", method = { RequestMethod.GET })
	public String toQuiz(@PathVariable Long id, Model model) {
		model.addAttribute("id", id);
		return "/halfway/quiz";
	}

	// 轉跳至飼主同意請求，認養程序開始頁面
	@RequestMapping(value = "/halfway/adoptionDetail", method = { RequestMethod.GET })
	public String toAdoptionDetail(Model model) {
		return "/halfway/adoptionDetail";
	}

}
