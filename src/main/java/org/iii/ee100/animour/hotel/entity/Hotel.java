package org.iii.ee100.animour.hotel.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="HOTEL")
public class Hotel {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="ID")
	private Long id;
	@Column(name="OWNER")
	private String owner;
	@Column(name="TYPE")
	private String type;
	@Column(name="TOTAL")
	private int total;
	@Column(name="SPECIE")
	private String specie;
	@Column(name="DOG_NAME")
	private String dogName;
	@Column(name="CHECKIN")
	private java.sql.Timestamp checkIn;
	

	@Override
	public String toString() {
		return "HotelBean [Id=" + id + ", owner=" + owner + ", type=" + type + ", total=" + total
				+ ", species=" + specie + ", dogName=" + dogName + ", checkIn=" + checkIn +"\n";
	}

	public String getOnwer() {
		return owner;
	}

	public void setOnwer(String onwer) {
		this.owner = onwer;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public String getSpecies() {
		return specie;
	}

	public void setSpecies(String species) {
		this.specie = species;
	}

	public String getDogName() {
		return dogName;
	}

	public void setDogName(String dogName) {
		this.dogName = dogName;
	}

	public java.sql.Timestamp getCheckIn() {
		return checkIn;
	}

	public void setCheckIn(java.sql.Timestamp checkIn) {
		this.checkIn = checkIn;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

}
