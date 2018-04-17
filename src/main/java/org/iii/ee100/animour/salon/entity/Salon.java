package org.iii.ee100.animour.salon.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.iii.ee100.animour.common.entity.GenericEntity;

@Entity
@Table(name="salon")
public class Salon extends GenericEntity{
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="ID")
	private Long id;
	
	@Column(name="RESERVATION")
	private java.sql.Date reservation;
	
	@Column(name="OWNER")
	private String owner;
	
	@Column(name="PHONE")
	private Integer phone;
	
	@Column(name="DOG_NAME")
	private String dogName;
	
	@Column(name="TYPE")
	private String type;
	
	@Column(name="GENDER")
	private String gender;
	
	@Column(name="FINISH_DATE")	
	private java.sql.Date finishDate;
	
	@Column(name="SPENDING")
    private Integer spending;
	
	@Column(name="DESIGNER")
    private String designer;
	
	@Column(name="MEMBERID")
    private Long memberId;
	
	

	@Override
	public String toString() {
		return "Salon [id=" + id + ", reservation=" + reservation + ", owner=" + owner + ", phone=" + phone
				+ ", dogName=" + dogName + ", type=" + type + ", gender=" + gender + ", finishDate=" + finishDate
				+ ", spending=" + spending + ", designer=" + designer + ", memberId=" + memberId + "]";
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public java.sql.Date getReservation() {
		return reservation;
	}
	public void setReservation(java.sql.Date reservation) {
		this.reservation = reservation;
	}
	public String getOwner() {
		return owner;
	}
	public void setOwner(String owner) {
		this.owner = owner;
	}
	public int getPhone() {
		return phone;
	}
	public void setPhone(Integer phone) {
		this.phone = phone;
	}
	public String getDogName() {
		return dogName;
	}
	public void setDogName(String dogName) {
		this.dogName = dogName;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public java.sql.Date getFinishDate() {
		return finishDate;
	}
	public void setFinishDate(java.sql.Date finishDate) {
		this.finishDate = finishDate;
	}
	public int getSpending() {
		return spending;
	}
	public void setSpending(Integer spending) {
		this.spending = spending;
	}
	public String getDesigner() {
		return designer;
	}
	public void setDesigner(String designer) {
		this.designer = designer;
	}
	public Long getMemberId() {
		return memberId;
	}
	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}
}
