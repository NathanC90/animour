package org.iii.ee100.animour.member.dao;

import org.iii.ee100.animour.common.dao.GenericDao;
import org.iii.ee100.animour.member.entity.Member;

public interface MemberDao extends GenericDao<Member>{

	Member findByAccount(String account);

}
