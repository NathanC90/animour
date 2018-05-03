package org.iii.ee100.animour.news.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table(name="NEWS")
@Data
public class News {

	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(name="SEQNO")
	private Long seqno;
	@Column(name="SUBJECT")
	private String subject;
	@Column(name="EVENT_DATE")
	private java.sql.Date eventDate;
	@Column(name="ADDRESS")
	private String address;
	@Column(name="CONTENT")
	private String content;
	@Column(name="PUBLISH_TIME")
	private java.sql.Date publishTime;
	@Column(name="PUBLISH_TIME_END")
	private java.sql.Date publishTimeEnd;
	@Column(name="CREATE_USER")
	private String createUser;
	@Column(name="CREATE_TIME")
	private java.sql.Timestamp createTime;
	@Column(name="UPDATE_USER")
	private String updateUser;
	@Column(name="UPDATE_TIME")
	private java.sql.Timestamp updateTime;
//	@Column(name="PAGE_VIEW")
//	private int pageView;
	@Column(name="IS_DEL")
	private String isDel;
	@Column(name="IS_ON")
	private String isOn;
	
	
	@Override
	public String toString() {
		return "News [seqno=" + seqno + ", subject=" + subject + ", content=" + content + ", publishTime="
				+ publishTime + ", publishTimeEnd=" + publishTimeEnd + ", createUser=" + createUser + ", createTime="
				+ createTime + "]";
	}
	public Long getSeqno() {
		return seqno;
	}
	public void setSeqno(Long seqno) {
		this.seqno = seqno;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public java.sql.Date getPublishTime() {
		return publishTime;
	}
	public void setPublishTime(java.sql.Date publishTime) {
		this.publishTime = publishTime;
	}
	public java.sql.Date getPublishTimeEnd() {
		return publishTimeEnd;
	}
	public void setPublishTimeEnd(java.sql.Date publishTimeEnd) {
		this.publishTimeEnd = publishTimeEnd;
	}
	public String getCreateUser() {
		return createUser;
	}
	public void setCreateUser(String createUser) {
		this.createUser = createUser;
	}
	public java.sql.Timestamp getCreateTime() {
		return createTime;
	}
	public void setCreateTime(java.sql.Timestamp createTime) {
		this.createTime = createTime;
	}
	public String getUpdateUser() {
		return updateUser;
	}
	public void setUpdateUser(String updateUser) {
		this.updateUser = updateUser;
	}
	public java.sql.Timestamp getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(java.sql.Timestamp updateTime) {
		this.updateTime = updateTime;
	}
	public String getIsDel() {
		return isDel;
	}
	public void setIsDel(String isDel) {
		this.isDel = isDel;
	}
	public String getIsOn() {
		return isOn;
	}
	public void setIsOn(String isOn) {
		this.isOn = isOn;
	}
	
//	public int getPageView() {
//		return pageView;
//	}
//	public void PageView(int pageView) {
//		this.pageView = pageView;
//	}

}
