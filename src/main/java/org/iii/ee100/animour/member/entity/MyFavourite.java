package org.iii.ee100.animour.member.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="MYFAVOURITE")
public class MyFavourite {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="ID")
	Long  id;
	@Column(name="MEMBER_ID")
	String member_id;//自己的帳號,是Member_id的外鍵
	@Column(name="Favourite_id")
	String Favourite_Id;//其他會員帳號
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getFavourite_Id() {
		return Favourite_Id;
	}
	public void setFavourite_Id(String favourite_Id) {
		Favourite_Id = favourite_Id;
	}
	
	


	
	
	
}
