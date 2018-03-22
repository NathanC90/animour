package org.iii.ee100.animour.forum.entity;

public class Article {
	private Long id;
	private String postName;
	private String subject;
	private String content;
	private java.sql.Timestamp postTime;
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
