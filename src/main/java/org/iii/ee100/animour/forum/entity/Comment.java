package org.iii.ee100.animour.forum.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.iii.ee100.animour.member.entity.Member;

@Entity
@Table(name="COMMENT")
public class Comment {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="ID")
	private Long id;
	
	@ManyToOne
	@JoinColumn(name = "ARTICLE_ID",referencedColumnName="ID")
	private Article article;
	
	@ManyToOne
	@JoinColumn(name = "MEMBER_ID",referencedColumnName="ID")
	private Member member;
	
	@Column(name="CONTENT",columnDefinition="TEXT")
	private String content;
	
	@Column(name="UPDATE_TIME")
	private java.sql.Timestamp updateTime;
}
