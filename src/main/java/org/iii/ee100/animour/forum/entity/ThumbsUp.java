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
@Table(name="THUMBSUP")
public class ThumbsUp {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="ID")
	private Long id;
	
	@ManyToOne
	@JoinColumn(name = "MEMBER_ID",referencedColumnName="ID")
	private Member member;
	
	@ManyToOne
	@JoinColumn(name = "ARTICLE_ID",referencedColumnName="ID")
	private Article article;
	
	@Column(name="THUMB")
	private Boolean thumb;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Boolean getThumb() {
		return thumb;
	}

	public void setThumb(Boolean thumb) {
		this.thumb = thumb;
	}

	
}
