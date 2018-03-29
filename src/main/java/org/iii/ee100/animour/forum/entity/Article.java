package org.iii.ee100.animour.forum.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ARTICLE")
public class Article {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="ID")
	private Long id;
	@Column(name="POST_NAME")
	private String postName;
	@Column(name="SUBJECT")
	private String subject;
	@Column(name="CONTENT")
	private String content;
	@Column(name="POST_TIME")
	private java.sql.Timestamp postTime;
	
	@Override
	public String toString() {
		return "Article [id=" + id + ", postName=" + postName + ", subject=" + subject + ", content=" + content
				+ ", postTime=" + postTime + "]";
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getPostName() {
		return postName;
	}
	public void setPostName(String postName) {
		this.postName = postName;
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
	
	
	
}
