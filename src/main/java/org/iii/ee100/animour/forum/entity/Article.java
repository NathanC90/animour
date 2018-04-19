package org.iii.ee100.animour.forum.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.iii.ee100.animour.common.entity.GenericEntity;
import org.iii.ee100.animour.member.entity.Member;

import lombok.Data;

@Entity
@Table(name = "ARTICLE")
@Data
public class Article extends GenericEntity {

	@ManyToOne
	private Category category;

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

	@OneToMany(mappedBy = "article", cascade = { CascadeType.ALL })
	private List<Comment> comment;

	@Transient
	private int commentLength;

	@Column(name = "CLICK")
	private Long click;

}
