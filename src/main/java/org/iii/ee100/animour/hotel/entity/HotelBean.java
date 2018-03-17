package org.iii.ee100.animour.hotel.entity;

public class HotelBean {
	private Long hotelId;
	private String onwer;
	private String type;
	private int total;
	private String species;
	private String dogName;
	private java.sql.Timestamp checkIn;
	

	@Override
	public String toString() {
		return "HotelBean [hotelId=" + hotelId + ", onwer=" + onwer + ", type=" + type + ", total=" + total
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

	public Long getHotelId() {
		return hotelId;
	}

	public void setHotelId(Long hotelId) {
		this.hotelId = hotelId;
	}

}
