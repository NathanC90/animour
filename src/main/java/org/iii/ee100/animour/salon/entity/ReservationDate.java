package org.iii.ee100.animour.salon.entity;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import org.iii.ee100.animour.common.entity.GenericEntity;

import lombok.Getter;
import lombok.Setter;


@Getter
@Setter
@Entity
@Table(name="RESERVATIONDATE")
public class ReservationDate extends GenericEntity{
	
	@Column(name="RESERVATION_DATE")
	private Date reservationDate;

}
