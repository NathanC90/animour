package org.iii.ee100.animour.forum.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.iii.ee100.animour.member.entity.Member;

@Entity
@Table(name = "ARTICLE")
public class Article extends GenericEntity {

	@ManyToOne
	private Category category;

	@Transient
	private String categoryName;

	@Column(name = "SUBJECT")
	private String subject;

	@Column(name = "CONTENT", columnDefinition = "TEXT")
	private String content;

	@Column(name = "POST_TIME")
	private java.sql.Timestamp postTime;

	@Column(name = "UPDATE_TIME")
	private java.sql.Timestamp updateTime;

	@ManyToOne
	// @JoinColumn(name = "MEMBER_ID",referencedColumnName="ID")
	private Member member;

	@Transient
	private String memberAccount;

	@OneToMany(mappedBy = "article", cascade = { CascadeType.ALL })
	private List<Comment> comment;

	@Transient
	private int commentLength;

	@Column(name = "CLICK")
	private Long click;

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public String getCategoryName() {
		return getCategory().getName();
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
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

	public String getMemberAccount() {
		return getMember().getAccount();
	}

	public void setMemberAccount(String memberAccount) {
		this.memberAccount = memberAccount;
	}

	public List<Comment> getComment() {
		return comment;
	}

	public void setComment(List<Comment> comment) {
		this.comment = comment;
	}

	public int getCommentLength() {
		if (getComment() != null) {
			return getComment().size();
		}
		return 0;
	}

	public void setCommentLength(int commentLength) {
		this.commentLength = commentLength;
	}

	public Long getClick() {
		return click;
	}

	public void setClick(Long click) {
		this.click = click;
	}

	@Override
	public String toString() {
		return "Article [id=" + getId() + ", categoryName=" + categoryName + ", subject=" + subject + ", content=" + content
				+ ", postTime=" + postTime + ", updateTime=" + updateTime + ", memberAccount=" + memberAccount
				+ ", click=" + click + "]";
	}

}
