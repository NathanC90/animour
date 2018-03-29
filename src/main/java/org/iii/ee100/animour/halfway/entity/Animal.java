package org.iii.ee100.animour.halfway.entity;

import java.sql.Blob;
import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ANIMAL")
public class Animal {

	@Id 
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="ID")
	private Long id;
	
	@Column(name="NAME") 
	private String name;
	
	@Column(name="SPECIE")
	private String specie;
	
	@Column(name="COLOR")
	private String color;
	
	@Column(name="FOUND")
	private java.sql.Date found;
	
	@Column(name="UPLOAD")
	private Timestamp upload;
	
	@Column(name="CITY")
	private String city;
	
	@Column(name="DISTRICT")
	private String district;
	
	@Column(name="HOSPITALIZED")
	private boolean hospitalized;
	
	@Column(name="CARDNUM")
	private String cardNum;
	
	@Column(name="IMAGE")
	private Blob image;
	
	@Column(name="FILENAME")
	private String fileName;
	
	@Column(name="MEMBERID")
	private Long memberId;
	

	@Override
	public String toString() {
		return "Animal [id=" + id + ", name=" + name + ", specie=" + specie + ", color=" + color + ", found=" + found + ", upload=" + upload + ", city=" + city
				+ ", district=" + district + ", hospitalized=" + hospitalized + ", cardNum=" + cardNum + ", image=" + image + ", memberId=" + memberId + "]";
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
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
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public Long getMemberId() {
		return memberId;
	}
	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}
	
}
