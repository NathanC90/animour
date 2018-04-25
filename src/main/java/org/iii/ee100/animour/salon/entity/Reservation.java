package org.iii.ee100.animour.salon.entity;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.iii.ee100.animour.common.entity.GenericEntity;

import lombok.Data;

@Entity
@Table(name="Reservation")
@Data
public class Reservation extends GenericEntity{
	
	@Id
	@Column(name="ID")
	private Long id;
	
	@Column(name="TIME")
	private java.sql.Timestamp time;
	
	@Column(name="SERVICE")
	private String service;
	
	@Column(name="PRICE")
	private Integer price;
	
	
}
