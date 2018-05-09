package org.iii.ee100.animour.salon.entity;



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
@Table(name="RESERVATIONTIME")
public class ReservationTime extends GenericEntity{
	
	
	
	
	
	
	@Column(name="FRONT_TIME")
	private java.sql.Time frontTime;
	
	@Column(name="BACK_TIME")
	private java.sql.Time backTime;
	

}
