package org.iii.ee100.animour.member.dao;

import org.iii.ee100.animour.common.dao.GenericDao;
import org.iii.ee100.animour.member.entity.Notice;
import org.springframework.stereotype.Repository;

@Repository
public interface NoticeDao extends GenericDao<Notice>{

//	Integer findByMemberIdAndWhoAndStatusCountByStatus(Long member_id,Long id, Boolean status, Boolean statuso);

}
