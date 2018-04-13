package org.iii.ee100.animour.forum.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.iii.ee100.animour.common.entity.GenericEntity;
import org.iii.ee100.animour.member.entity.Member;

@Entity
@Table(name="COMMENT")
public class Comment extends GenericEntity{
	
	@ManyToOne
	@JoinColumn(name = "ARTICLE_ID",referencedColumnName="ID")
	private Article article;
	
	@ManyToOne
	@JoinColumn(name = "MEMBER_ID",referencedColumnName="ID")
	private Member member;
	
	@Transient
	private String memberAccount;
	
	@Column(name="CONTENT",columnDefinition="TEXT")
	private String content;
	
	@Column(name="UPDATE_TIME")
	private java.sql.Timestamp updateTime;

	public Article getArticle() {
		return article;
	}

	public void setArticle(Article article) {
		this.article = article;
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}

	public String getMemberAccount() {
		return getMember().getAccount();
	}

	public void setMemberAccount(String memberAccount) {
		this.memberAccount = memberAccount;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public java.sql.Timestamp getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(java.sql.Timestamp updateTime) {
		this.updateTime = updateTime;
	}

	
}
