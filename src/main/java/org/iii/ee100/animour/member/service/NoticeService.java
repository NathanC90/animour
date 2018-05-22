package org.iii.ee100.animour.member.service;

import org.iii.ee100.animour.common.service.GenericService;
import org.iii.ee100.animour.member.dao.MemberDao;
import org.iii.ee100.animour.member.dao.NoticeDao;
import org.iii.ee100.animour.member.entity.Member;
import org.iii.ee100.animour.member.entity.Notice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NoticeService extends GenericService<Notice> {

	@Autowired
	NoticeDao noticeDao;
	
	//新增通知
	public void insert(Notice notice)  {
		noticeDao.save(notice);
	}
	
	
	//查詢通知
	public void findStatus(Notice notice)  {
//		noticeDao.findByMemberIdAndWhoAndStatusCountByStatus(notice.getMember().getId(), notice.getWho(), true, true);
	}


}

