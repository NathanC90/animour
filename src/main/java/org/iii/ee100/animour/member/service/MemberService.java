package org.iii.ee100.animour.member.service;

import java.util.ArrayList;
import java.util.List;

import org.iii.ee100.animour.common.service.GenericService;
import org.iii.ee100.animour.member.dao.MemberDao;
import org.iii.ee100.animour.member.entity.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService extends GenericService<Member> {

	@Autowired
	MemberDao memberDao;
	
	public void insert(Member member)  {
		memberDao.save(member);
	}

	public void update(Member member)  {
		memberDao.save(member);		
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
	
}

