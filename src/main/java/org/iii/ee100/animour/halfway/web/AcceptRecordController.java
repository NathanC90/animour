package org.iii.ee100.animour.halfway.web;

import org.iii.ee100.animour.halfway.service.AcceptRecordService;
import org.iii.ee100.animour.halfway.service.AdoptionService;
import org.iii.ee100.animour.halfway.service.AnimalService;
import org.iii.ee100.animour.member.entity.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AcceptRecordController {

	@Autowired
	AdoptionService adoptionservice;

	@Autowired
	AnimalService animalservice;
	
	@Autowired
	AcceptRecordService acceptRecordService;
	
	@RequestMapping(value = "/halfway/toacceptrecord") // findAll
	public String listAcceptRecord(Model model) {
		// 設定當前會員
		Member current = animalservice.getCurrentMember();
		model.addAttribute("currentMember", current);
		return "/halfway/acceptrecordlist";
	}
	
}
