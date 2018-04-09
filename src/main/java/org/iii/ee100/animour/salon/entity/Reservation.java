package org.iii.ee100.animour.salon.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Reservation")
public class Reservation {
	
	@Id
	@Column(name="ID")
	private Long id;
	
	@Column(name="TIME")
	private java.sql.Timestamp time;
	
	@Column(name="SERVICE")
	private String service;
	
	@Column(name="PRICE")
	private int price;
	
	@Override
	public String toString() {
		return "Reservation [time=" + time + ", service=" + service + ", price=" + price + "]";
	}
	public java.sql.Timestamp getTime() {
		return time;
	}
	public void setTime(java.sql.Timestamp time) {
		this.time = time;
	}
	public String getService() {
		return service;
	}
	public void setService(String service) {
		this.service = service;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
}
