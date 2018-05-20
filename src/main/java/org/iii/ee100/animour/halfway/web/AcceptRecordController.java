package org.iii.ee100.animour.halfway.web;

import java.sql.Timestamp;

import org.iii.ee100.animour.halfway.entity.AcceptRecord;
import org.iii.ee100.animour.halfway.service.AcceptRecordService;
import org.iii.ee100.animour.halfway.service.AdoptionService;
import org.iii.ee100.animour.halfway.service.AnimalService;
import org.iii.ee100.animour.member.entity.Member;
import org.iii.ee100.animour.member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AcceptRecordController {

	@Autowired
	AdoptionService adoptionService;

	@Autowired
	AnimalService animalService;
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	AcceptRecordService acceptRecordService;
	
	// 轉跳至認養程序詳情頁面
	@RequestMapping(value = "/halfway/toacceptrecord/{id}") // findAll
	public String listAcceptRecord(@PathVariable Long id, Model model) {
		// 設定當前會員
		Member current = memberService.getNewCurrentMember();
		model.addAttribute("currentMember", current);
		
		model.addAttribute("id", id);
		return "/halfway/adoptionDetail";
	}
	
	
	
}
