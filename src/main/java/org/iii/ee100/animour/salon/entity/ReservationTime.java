package org.iii.ee100.animour.salon.entity;


import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.iii.ee100.animour.common.entity.GenericEntity;


import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name="RESERVATIONTIME")
public class ReservationTime extends GenericEntity{
	
	
	
	

	@OneToMany(mappedBy = "reservationTime", cascade = { CascadeType.ALL })
	private List<ServiceContent> serviceContent;
	
	@Column(name="FRONT_TIME")
	private java.sql.Time frontTime;
	
	@Column(name="BACK_TIME")
	private java.sql.Time backTime;
	

}
