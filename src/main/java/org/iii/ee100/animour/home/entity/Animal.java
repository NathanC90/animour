package org.iii.ee100.animour.home.entity;

import java.sql.Blob;
import java.sql.Timestamp;

public class Animal {

	private Long animalId;
	private String name;
	private String specie;
	private String color;
	private java.sql.Date found;
	private Timestamp upload;
	private String city;
	private String district;
	private boolean hospitalized;
	private String cardNum;
	private Blob image;
	private Long memberId;
	
	public Long getAnimalId() {
		return animalId;
	}
	public void setAnimalId(Long animalId) {
		this.animalId = animalId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSpecie() {
		return specie;
	}
	public void setSpecie(String specie) {
		this.specie = specie;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public java.sql.Date getFound() {
		return found;
	}
	public void setFound(java.sql.Date found) {
		this.found = found;
	}
	public Timestamp getUpload() {
		return upload;
	}
	public void setUpload(Timestamp upload) {
		this.upload = upload;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public boolean isHospitalized() {
		return hospitalized;
	}
	public void setHospitalized(boolean hospitalized) {
		this.hospitalized = hospitalized;
	}
	public String getCardNum() {
		return cardNum;
	}
	public void setCardNum(String cardNum) {
		this.cardNum = cardNum;
	}
	public Blob getImage() {
		return image;
	}
	public void setImage(Blob image) {
		this.image = image;
	}
	public Long getMemberId() {
		return memberId;
	}
	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}
	
}
