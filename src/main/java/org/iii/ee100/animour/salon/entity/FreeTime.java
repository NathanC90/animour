package org.iii.ee100.animour.salon.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import org.iii.ee100.animour.common.entity.GenericEntity;

import lombok.Data;

@Data
@Entity
@Table(name="FREETIME")
public class FreeTime extends GenericEntity{

	@Column(name="BRESERVATION_DATE")
	private java.util.Date BreservationDate;
	
	@Column(name="BFRONT_TIME")
	private java.sql.Time BfrontTime;
	
	@Column(name="BDESIGNER")
	private String Bdesigner;
	
	@Column(name="STATUS")
	private String status;
	
	
}
