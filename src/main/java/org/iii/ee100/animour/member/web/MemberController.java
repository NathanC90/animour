package org.iii.ee100.animour.member.web;

import java.sql.Timestamp;
import java.util.List;

import javax.validation.Valid;

import org.iii.ee100.animour.halfway.entity.Animal;
import org.iii.ee100.animour.halfway.service.AnimalService;
import org.iii.ee100.animour.member.entity.Member;
import org.iii.ee100.animour.member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MemberController {
	@Autowired
	MemberService memberService;

	@Autowired
	AnimalService animalService;
	
	// 註冊頁面
	@RequestMapping(value = "/sign_up", method = RequestMethod.GET)
	public String sign(Model model) {
		Member member = new Member();
		model.addAttribute("member", member);
		return "/member/register";

	}

	// 修改個人頁面
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public String update(Model model) {
		 String account= memberService.getCurrentMember().getUsername();
		 Member userDetails=memberService.getOneByAccount(account);
		 model.addAttribute("member", userDetails);
		return "/member/update";
	}
	
	// 送出註冊資料(新增會員)
	@RequestMapping(value = "/sign_up", method = RequestMethod.POST)
	public String register(@Valid @ModelAttribute("member") Member member,BindingResult bindingResult) {
		if (bindingResult.hasErrors()) {
			return "/member/register";
		}
		else {
 
		member.setRegistrationTime(new Timestamp(System.currentTimeMillis()));
		member.setStatus(1);
		memberService.insert(member);
		return "redirect:/";// 註冊成功跳轉 login
		}
	}

	// 修改個人頁面(註冊資料)
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String updatemember(@Valid @ModelAttribute("member") Member member
			, 
			BindingResult bindingResult
			, @RequestParam("name") String name
			, @RequestParam("nickname") String nickname
			, @RequestParam("password") String password
			, @RequestParam("cell") String cell
			, @RequestParam("email") String email
			, @RequestParam("address") String address
			, @RequestParam("account") String account) 
			{
		if (bindingResult.hasErrors()) {
			return "/member/update";
		}
		else {
		
		memberService.update(password, name, nickname, cell, email, account);
		;
		return "redirect:/";
		}
	}
	
	//刪除會員(管理員才有資格)
	@RequestMapping(value = "/deletemember", method = RequestMethod.POST)
	public String delete(@RequestParam("account") String account,Model model) {
		memberService.delete(account);
		return "redirect:/";//回到主頁
	}	
	

	// 列出(全部)會員
	@RequestMapping("/users")
	public String findAll() {
		return "/member/users";//先傳送頁面
	}

	// 顯示個人首頁
	@RequestMapping(value = "/{account}", method = RequestMethod.GET)
	public String profile(Model model,@PathVariable String account) {		
		 Member userDetails=memberService.getOneByAccount(account);
		 model.addAttribute("member", userDetails);
		 
		 List<Animal> animalls=animalService.getHomepageAnimalList(userDetails.getId());
		 model.addAttribute("animalls", animalls);
		 
		return "/member/homepage";

	}

	
}
