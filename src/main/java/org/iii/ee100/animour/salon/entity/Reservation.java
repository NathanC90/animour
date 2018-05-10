package org.iii.ee100.animour.salon.entity;


import java.sql.Time;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.iii.ee100.animour.common.entity.GenericEntity;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name="RESERVATION")
public class Reservation extends GenericEntity{
	
	
	@ManyToOne
	@JoinColumn(name = "RESERVATIONTIME_ID", referencedColumnName = "ID")
	private ReservationTime reservationTime;
	
	@Column(name="RESERVATION_DATE")
	private java.sql.Date reservationDate;
	
	@Column(name="CONTENT")
	private String content;
	
	@Column(name="DESIGNER")
	private String designer;
	@Column(name="TOTAL_TIME")
	private Integer totalTime;
	
	@Column(name="PRICE")
	private Integer price;	
	
	
	
	
}
