package org.iii.ee100.animour.member.service;

import org.iii.ee100.animour.member.dao.MemberDao;
import org.iii.ee100.animour.member.entity.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService {

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
	
	public Member getOneByAccount(String account) {
		return memberDao.findByAccount(account);
	}
	
}

