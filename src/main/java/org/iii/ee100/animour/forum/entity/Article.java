package org.iii.ee100.animour.forum.entity;

public class Article {
	private Long articleId;
	private String postName;
	private String articleSubject;
	private String articleContent;
	private java.sql.Timestamp postTime;
	
	public Long getArticleId() {
		return articleId;
	}
	public void setArticleId(Long articleId) {
		this.articleId = articleId;
	}
	public String getPostName() {
		return postName;
	}
	public void setPostName(String postName) {
		this.postName = postName;
	}
	public String getArticleSubject() {
		return articleSubject;
	}
	public void setArticleSubject(String articleSubject) {
		this.articleSubject = articleSubject;
	}
	public String getArticleContent() {
		return articleContent;
	}
	public void setArticleContent(String articleConrent) {
		this.articleContent = articleConrent;
	}

	public java.sql.Timestamp getPostTime() {
		return postTime;
	}
	public void setPostTime(java.sql.Timestamp postTime) {
		this.postTime = postTime;
	}


	
	
}
