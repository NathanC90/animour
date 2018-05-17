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

	
	
	
	@ManyToOne
	@JoinColumn(name = "DESIGNER_ID", referencedColumnName = "ID")
	private Designer designer;
	
	@Column(name="CONTENT")
	String content;
	@Column(name ="TIME")
	Integer time;
	@Column(name ="PRICE")
	Integer price;
	
	@Override
	public String toString() {
		return "ServiceContent [designer=" + designer + ", content=" + content + ", time=" + time + ", price=" + price
				+ "]";
	}
	
	
	

	
	}