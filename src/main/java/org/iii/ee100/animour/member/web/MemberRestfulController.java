package org.iii.ee100.animour.member.web;

import java.util.List;

import org.iii.ee100.animour.member.entity.Member;
import org.iii.ee100.animour.member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping("/user")
public class MemberRestfulController {
	@Autowired
	MemberService memberService;
	
	@RequestMapping(method=RequestMethod.GET,produces= {"application/json"})
	public List<Member> findAll() {
		List<Member> members=memberService.getAll();
		return members;
	}
	
	@RequestMapping(value= "/{account}"
			,method=RequestMethod.GET
			,produces= {"application/json"})
	public Member findByAccount(@PathVariable("account") String account) {
		return memberService.getOneByAccount(account);
	}

	

}
