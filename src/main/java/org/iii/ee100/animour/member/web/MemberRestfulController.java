package org.iii.ee100.animour.member.web;

import java.util.List;

import javax.validation.Valid;

import org.iii.ee100.animour.member.entity.Member;
import org.iii.ee100.animour.member.service.MemberService;
import org.iii.ee100.animour.salon.entity.Designer;
import org.iii.ee100.animour.salon.entity.Reservation;
import org.iii.ee100.animour.salon.entity.ServiceContent;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/user")
public class MemberRestfulController {
	@Autowired
	MemberService memberService;

	@RequestMapping(method = RequestMethod.GET, produces = { "application/json" })
	public List<Member> findAll() {
		List<Member> members = memberService.getAll();
		return members;
	}

	@RequestMapping(value = "/{account}", method = RequestMethod.GET, produces = { "application/json" })
	public Member findByAccount(@PathVariable("account") String account) {
		return memberService.getOneByAccount(account);
	}

	@RequestMapping(value = "/member/{id}", method = RequestMethod.GET, produces = { "application/json" })
	public Member findById(@PathVariable("id") Long id) {
		return memberService.getOne(id);
	}

	//不確定能不能用
//	@RequestMapping(value = "/member/{id}", method = RequestMethod.PUT, consumes = { "application/json" })
//	public ResponseEntity<?> updateReservation(@PathVariable(value = "id") Long id, @Valid @RequestBody Member member) {
//		memberService.insert(member);
//		return new ResponseEntity<Member>(member, HttpStatus.OK);
//
//	}

}
