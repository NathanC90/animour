package org.iii.ee100.animour.member.service;

import java.util.List;

import org.iii.ee100.animour.common.service.GenericService;
import org.iii.ee100.animour.member.dao.NoticeDao;
import org.iii.ee100.animour.member.entity.Notice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Service;

@Service
public class NoticeService extends GenericService<Notice> {

	@Autowired
	NoticeDao noticeDao;

	@Autowired
	private SimpMessagingTemplate simpMessagingTemplate;

	// 新增通知
	public void insert(Notice notice) {
		noticeDao.save(notice);
	}
	
	public List<Notice> findNotReadByMember(Long memberId, Boolean status){
		return noticeDao.findByMemberIdAndStatus(memberId, status);
	}


	//查詢通知
//	public Long findStatus(Notice notice)  {
//		return noticeDao.countByStatusAndMemberId(notice.getStatus(), notice.getMember().getId());
//	}

	// websocket 發送通知
	// public void notify(Notice notice, String username) {
	public void notify(String username, Object message) {
		simpMessagingTemplate.convertAndSendToUser(username, "/queue/notifications", message);
		return;
	}

	// 查詢未讀通知數量
	public Long findNotReadCount(Long memberId) {
		return noticeDao.countByMemberIdAndStatus(memberId, false);
	}

}
