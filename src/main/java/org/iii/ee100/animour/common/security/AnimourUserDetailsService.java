package org.iii.ee100.animour.common.security;

import org.iii.ee100.animour.member.dao.MemberDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

public class AnimourUserDetailsService implements UserDetailsService {
	@Autowired
	private MemberDao memberDao;
	
	@Override
	public UserDetails loadUserByUsername(String account) throws UsernameNotFoundException {		
		return memberDao.findByAccount(account);
	}

	
}
