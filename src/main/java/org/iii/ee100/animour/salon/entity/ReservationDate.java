package org.iii.ee100.animour.salon.entity;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import org.iii.ee100.animour.common.entity.GenericEntity;

import lombok.Data;

@Entity
@Table(name="RESERVATIONDATE")
@Data
public class ReservationDate extends GenericEntity{
	
	@Column(name="DATE")
	private Timestamp date;
	

}
