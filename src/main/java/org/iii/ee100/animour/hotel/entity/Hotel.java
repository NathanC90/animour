package org.iii.ee100.animour.hotel.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="HOTEL")
public class Hotel {
	@Id
	@Column(name="ID")
	private Long id;
	@Column(name="ONWER")
	private String onwer;
	@Column(name="TYPE")
	private String type;
	@Column(name="TOTAL")
	private int total;
	@Column(name="SPECIES")
	private String species;
	@Column(name="DOGNAME")
	private String dogName;
	@Column(name="CHECKIN")
	private java.sql.Timestamp checkIn;
	

	@Override
	public String toString() {
		return "HotelBean [hotelId=" + id + ", onwer=" + onwer + ", type=" + type + ", total=" + total
				+ ", species=" + species + ", dogName=" + dogName + ", checkIn=" + checkIn +"\n";
	}

	public String getOnwer() {
		return onwer;
	}

	public void setOnwer(String onwer) {
		this.onwer = onwer;
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
		return species;
	}

	public void setSpecies(String species) {
		this.species = species;
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
