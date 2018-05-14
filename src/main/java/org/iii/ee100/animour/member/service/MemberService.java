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
	
	//新增會員
	public void insert(Member member)  {
		memberDao.save(member);
	}

	//會員修改密碼
	public void update(Member member,String newPassword) {
		member.setPassword(newPassword);
		memberDao.save(member);
	}
	
	//會員修改個人資料
	public void update(Member member)  {
		Member memberToUpdate=memberDao.findByAccount(member.getAccount());
		memberToUpdate.setName(member.getName());
		memberToUpdate.setNickname(member.getNickname());
		memberToUpdate.setCell(member.getCell());
		memberToUpdate.setEmail(member.getEmail());
		memberToUpdate.setAddress(member.getAddress());
		memberToUpdate.setSignature(member.getSignature());
		
		memberDao.save(memberToUpdate);
	}
	
	
	//更改會員當前狀態(status:0 close/1 on)
	public void changeMemberStatus(String account) {
		Member deletemember = memberDao.findByAccount(account);
		if(deletemember.getStatus()==1) {
				deletemember.setStatus(0);}
		else{
			deletemember.setStatus(1);
		}
		memberDao.save(deletemember);
	}

	
	//查詢會員
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
	
	public Member getNewCurrentMember() {
		if(getCurrentMember()==null) {
			return null;
		}
		Member principal = memberDao.findByAccount(getCurrentMember().getAccount());
		return principal;
	}
	
	
	//驗證密碼(會員修改密碼需驗證舊密碼)
	public boolean validPassword(String password) {
		if(getNewCurrentMember().getPassword().equals(password)) {
			return true;
		}
		else {
			return false;
		}		
	}
	
	//判斷信箱是否重複
	public boolean emailExist(String email) {
        Member member = memberDao.findByEmail(email);
        if (member != null) {
            return true;
        }
        return false;
	}


 	
}

