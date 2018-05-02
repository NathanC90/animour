package org.iii.ee100.animour.salon.entity;


import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.iii.ee100.animour.common.entity.GenericEntity;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;


@Getter
@Setter
@Entity
@Table(name="SERVICECONTENT")
public class ServiceContent extends GenericEntity{

	@ManyToOne(cascade = CascadeType.ALL,fetch = FetchType.LAZY)
	@JoinColumn(name = "RESERVATIONDATE_ID",referencedColumnName="ID")
	private ReservationDate reservationDate;
	
	String content;
	@Column(name ="TIME")
	Integer time;
	@Column(name ="PRICE")
	Integer price;
	
	
	

	
	}