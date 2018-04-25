package org.iii.ee100.animour.member.dao;

import org.iii.ee100.animour.common.dao.GenericDao;
import org.iii.ee100.animour.member.entity.Member;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface MemberDao extends GenericDao<Member>{

	Member findByAccount(String account);

}
