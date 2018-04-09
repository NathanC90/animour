package org.iii.ee100.animour.member.web;


import org.iii.ee100.animour.member.entity.Member;
import org.iii.ee100.animour.member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {

	@Autowired
	MemberService memberService;

	
	@RequestMapping("/sign_up")
	public String sign() {	
			return "/login/register";
			
	}
	
	// 會員註冊
	@RequestMapping("/login")
	public String register(Model model,Member member) {	
			memberService.insert(member);
			
			return "/login/login";//註冊成功跳轉 login
			
	}
	
	
	
}
