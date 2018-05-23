package org.iii.ee100.animour.member.dao;

import org.iii.ee100.animour.common.dao.GenericDao;
import org.iii.ee100.animour.member.entity.Notice;
import org.springframework.stereotype.Repository;

@Repository
public interface NoticeDao extends GenericDao<Notice>{
												//被通知        true
	Integer countStatusByMemberIdAndStatus(Long memberId,Boolean Status);
	Long countByStatus(Boolean status);
}
