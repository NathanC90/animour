package org.iii.ee100.animour.member.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.iii.ee100.animour.common.entity.GenericEntity;

@Entity
@Table(name="MYFAVOURITE")
public class MyFavourite extends GenericEntity{
	
	@ManyToOne
	@JoinColumn(name = "MEMBER_ID", referencedColumnName = "ID")
	private Member member;
	
	@Column(name="Favourite_id")
	String Favourite_Id;//其他會員帳號
	
	
}
