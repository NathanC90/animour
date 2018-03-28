package org.iii.ee100.animour.donate.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.iii.ee100.animour.donate.entity.Donate;
import org.iii.ee100.animour.donate.service.DonateService;

@Controller
public class DonateController {

	@Autowired
	DonateService DonateService;

	@RequestMapping("/donate")
	public String donateIndex(Model model) {
		return "donate/donate";
	}

	@RequestMapping(path = { "/donate/selectOneDonate" }, method = { RequestMethod.GET })
	public String selectOneDonate(Donate donate, Model model) {
		Donate dn = DonateService.getOne(Long.valueOf(donate.getId()));
		if (dn != null) {
			model.addAttribute("donateOne", dn);
		}
		return "/donate/DonateForm";
	}

	@RequestMapping(path = { "/selectAllDonate" }, method = { RequestMethod.GET })
	public String selectAllDonate(Model model) {
		model.addAttribute("donateAll", DonateService.getAll());
		return "/donate/DonateForm";
	}

	@RequestMapping(path = { "/deleteOneDonate" }, method = { RequestMethod.GET })
	public String deleteOneDonate(Donate donate, Model model) {
		DonateService.delete(donate.getId());
		return "/donate/DonateForm";
	}
	
	@RequestMapping(path = {"/updateDonate"}, method = {RequestMethod.POST})
	public String updateDonate(Donate donate, Model model) {
		DonateService.update(donate);
		return "/donate/DonateForm";
	}
	
	@RequestMapping(path = {"/insertDonate"}, method = {RequestMethod.POST})
	public String insertDonate(Donate donate, Model model) {
		DonateService.insert(donate);
		return "/donate/ProcessDonateForm";
	}
	
	
	
	
	
	
	

	
	
	
	
	
	
}
