package org.iii.ee100.animour.member.service;

import java.security.Principal;

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

	// 查詢通知
	public void findStatus(Notice notice) {
		// noticeDao.findByMemberIdAndWhoAndStatusCountByStatus(notice.getMember().getId(),
		// notice.getWho(), true, true);
	}

	// websocket 發送通知
	// public void notify(Notice notice, String username) {
	public void notify(String username, Object message) {
		simpMessagingTemplate.convertAndSendToUser(username, "/queue/notifications", "-您共有"+message+"筆未讀訊息");
		return;
	}

	// 查詢通知
	public Long findNotReadCount() {
		return noticeDao.countByStatus(false);
	}

}
