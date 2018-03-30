package org.iii.ee100.animour.forum.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.iii.ee100.animour.member.entity.Member;

@Entity
@Table(name="ARTICLE")
public class Article {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="ID")
	private Long id;
	
	@ManyToOne
	private Category category;
	
	@Column(name="SUBJECT")
	private String subject;
	
	@Column(name="CONTENT")
	private String content;
	
	@Column(name="POST_TIME")
	private java.sql.Timestamp postTime;
	
	@Column(name="UPDATE_TIME")
	private java.sql.Timestamp updateTime;
	
	@ManyToOne
//	@JoinColumn(name = "MEMBER_ID",referencedColumnName="ID")
	private Member member;
	
	@Column(name="CLICK")
	private Long click;
	
	public Long getId() {
		return id;
	}
	
	public void setId(Long id) {
		this.id = id;
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
	
	public java.sql.Timestamp getPostTime() {
		return postTime;
	}
	
	public void setPostTime(java.sql.Timestamp postTime) {
		this.postTime = postTime;
	}
	
	public java.sql.Timestamp getUpdateTime() {
		return updateTime;
	}
	
	public void setUpdateTime(java.sql.Timestamp updateTime) {
		this.updateTime = updateTime;
	}
	
	public Member getMember() {
		return member;
	}
	
	public void setMember(Member member) {
		this.member = member;
	}
	
	public Long getClick() {
		return click;
	}
	
	public void setClick(Long click) {
		this.click = click;
	}
	
	@Override
	public String toString() {
		return "Article [id=" + id + ", subject=" + subject + ", content=" + content + ", postTime=" + postTime
				+ ", updateTime=" + updateTime + ", member=" + member + ", click=" + click + "]";
	}
	
	
}
