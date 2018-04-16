package org.iii.ee100.animour.member.web;

import java.sql.Timestamp;

import javax.servlet.http.HttpSession;

import org.iii.ee100.animour.common.security.AnimourUserDetailsService;
import org.iii.ee100.animour.member.entity.Member;
import org.iii.ee100.animour.member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MemberController {

	@Autowired
	MemberService memberService;

	// 註冊頁面
	@RequestMapping("/sign_up")
	public String sign() {
		return "/login/register";

	}

	// 送出註冊資料
	@RequestMapping("/login")
	public String register(Model model, Member member) {
		member.setRegistrationTime(new Timestamp(System.currentTimeMillis()));
		memberService.insert(member);
		return "/login/login";// 註冊成功跳轉 login

	}

	// 列出(全部)會員
	@RequestMapping("/allmember")
	public String findAll(Model model) {
		model.addAttribute("memberlist", memberService.getAll());
		return "/login/login";// 註冊成功跳轉 login

	}

	// 顯示個人首頁
	@RequestMapping(value="/homepage", method = RequestMethod.GET)
	public String profile(Member member,Model model) {
		UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext()  
																	 .getAuthentication()  
																	 .getPrincipal();				
		model.addAttribute("profile", userDetails);
		return "/member/homepage";

	}

}
