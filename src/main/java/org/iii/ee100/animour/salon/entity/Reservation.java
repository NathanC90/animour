package org.iii.ee100.animour.salon.entity;


import java.sql.Time;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.iii.ee100.animour.common.entity.GenericEntity;
import org.iii.ee100.animour.member.entity.Member;
import org.springframework.beans.factory.annotation.Autowired;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name="RESERVATION")
public class Reservation extends GenericEntity{
	
	
	
	@Override
	public String toString() {
		return "Reservation [reservationDate=" + reservationDate + ", frontTime=" + frontTime + ", content="
				+ content + ", designer=" + designer + ", totalTime=" + totalTime + ", price=" + price + "]";
	}
//	@ManyToOne
//	@JoinColumn(name = "MEMBER_ID", referencedColumnName = "ID")
//	private Member member; 

	

	@Column(name="RESERVATION_DATE")
	private java.sql.Date reservationDate;
	
	@Column(name="FRONT_TIME")
	private java.sql.Time frontTime;
	
	@Column(name="CONTENT")
	private String content;
	
	@Column(name="DESIGNER")
	private String designer;
	@Column(name="TOTAL_TIME")
	private Integer totalTime;
	
	@Column(name="PRICE")
	private Integer price;
	
	@Column(name="PAYMENT")
	private String payment;
	
	
	
	
}
