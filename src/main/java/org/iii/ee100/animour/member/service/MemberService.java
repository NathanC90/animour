package org.iii.ee100.animour.member.service;

import java.util.ArrayList;
import java.util.List;

import org.iii.ee100.animour.common.service.GenericService;
import org.iii.ee100.animour.member.dao.MemberDao;
import org.iii.ee100.animour.member.entity.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;

@Service
public class MemberService extends GenericService<Member> {

	@Autowired
	MemberDao memberDao;
	
	
	public void insert(Member member)  {
		memberDao.save(member);
	}

	public void update(Member member,String newPassword) {
		member.setPassword(newPassword);
		memberDao.save(member);
	}
	
	public void update(Member member)  {
		Member memberToUpdate=memberDao.findByAccount(member.getAccount());
		memberToUpdate.setPassword(member.getPassword());
		memberToUpdate.setName(member.getName());
		memberToUpdate.setNickname(member.getNickname());
		memberToUpdate.setCell(member.getCell());
		memberToUpdate.setEmail(member.getEmail());
		memberToUpdate.setAddress(member.getAddress());
		memberToUpdate.setSignature(member.getSignature());
		
		memberDao.save(memberToUpdate);
	}
	
	
	public void delete(String account) {
		Member deletemember = memberDao.findByAccount(account);
		if(deletemember.getStatus()==1) {
				deletemember.setStatus(0);}
		else{
			deletemember.setStatus(1);
		}
		memberDao.save(deletemember);

	}

	public Member getOne(Long id) {
		return memberDao.findOne(id);
	}

	public ArrayList<Member> getAll() {
		return (ArrayList<Member>) memberDao.findAll();
	}

	
	public Member getOneByAccount(String account) {
		return memberDao.findByAccount(account);
	}
	
	
	public Member getCurrentMember() {
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if (principal instanceof UserDetails ) {
			return (Member) principal;
		} else {
			return null;
		}		
	}
	
	public Member getNewCurrentMembr() {
		Member principal = memberDao.findByAccount(getCurrentMember().getAccount());
		return principal;
	}
	
	
	
	
}

