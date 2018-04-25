package org.iii.ee100.animour.salon.entity;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.iii.ee100.animour.common.entity.GenericEntity;

import lombok.Data;

@Entity
@Table(name="salon")
@Data
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
	
	

}
