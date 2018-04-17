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
	@RequestMapping(value = "/sign_up", method = RequestMethod.GET)
	public String sign(Model model) {
		Member member = new Member();
		model.addAttribute("member", member);
		return "/member/register";

	}

	// 修改個人頁面
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public String update(Model model) {
		UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		model.addAttribute("member", userDetails);
		return "/member/update";
	}


	// 送出註冊資料(新增會員)
	@RequestMapping(value = "/sign_up", method = RequestMethod.POST)
	public String register(Member member) {
		member.setRegistrationTime(new Timestamp(System.currentTimeMillis()));
		memberService.insert(member);
		return "redirect:/";// 註冊成功跳轉 login

	}

	// 修改個人頁面
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String updatemember(Member member) {
		
		memberService.update(member);
		return "/member/homepage";
	}		
	
	// 列出(全部)會員
	@RequestMapping("/allmember")
	public String findAll(Model model) {
		model.addAttribute("memberlist", memberService.getAll());
		return "/member/users";

	}

	// 顯示個人首頁
	@RequestMapping(value = "/homepage", method = RequestMethod.GET)
	public String profile(Member member, Model model) {
		UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		model.addAttribute("profile", userDetails);
		return "/member/homepage";

	}

}
