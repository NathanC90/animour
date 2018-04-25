package org.iii.ee100.animour.member.web;

import java.util.List;

import org.iii.ee100.animour.member.entity.Member;
import org.iii.ee100.animour.member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import net.minidev.json.JSONValue;

@RestController
@RequestMapping("/rest_users")
public class MemberRestfulController {
	@Autowired
	MemberService memberService;
	
	@RequestMapping(method=RequestMethod.GET,produces= {"application/json"})
	public List<Member> findAll() {
		List<Member> members=memberService.getAll();
		return members;
	}



}
