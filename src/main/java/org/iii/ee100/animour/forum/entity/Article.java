package org.iii.ee100.animour.forum.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.iii.ee100.animour.common.entity.GenericEntity;
import org.iii.ee100.animour.member.entity.Member;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "ARTICLE")
@Setter
@Getter
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class Article extends GenericEntity {

	@ManyToOne
	@JoinColumn(name = "CATEGORY_ID",referencedColumnName="ID")
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
	@JoinColumn(name = "MEMBER_ID",referencedColumnName="ID")
	private Member member;
	
	@JsonInclude(JsonInclude.Include.NON_NULL)
	@Transient
	private int commentLength;

	@Column(name = "CLICK")
	private Long click;

}
