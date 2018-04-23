package org.iii.ee100.animour.forum.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.iii.ee100.animour.common.entity.GenericEntity;
import org.iii.ee100.animour.member.entity.Member;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "COMMENT")
@Setter
@Getter
public class Comment extends GenericEntity {

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "ARTICLE_ID", referencedColumnName = "ID")
	private Article article;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "MEMBER_ID", referencedColumnName = "ID")
	private Member member;

	@Column(name = "CONTENT", columnDefinition = "TEXT")
	private String content;

	@Column(name = "UPDATE_TIME")
	private java.sql.Timestamp updateTime;

}
