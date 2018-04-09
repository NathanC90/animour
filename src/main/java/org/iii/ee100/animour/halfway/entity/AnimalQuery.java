package org.iii.ee100.animour.halfway.entity;

import java.sql.Timestamp;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

public class AnimalQuery {

	private Long id;

	private String status;
	private String name;
	private String specie;
	private String color;
	private String gender;
	private java.sql.Date found;
	private Timestamp upload;
	private String city;
	private String district;
	private Boolean hospitalized;
	private String hospitalName;
	private String cardNum;
	private Boolean neuter;
	private String remark;
	private String fileName;
	private Long memberId;

	// Getter/Setter
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
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

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
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

	public Boolean getHospitalized() {
		return hospitalized;
	}

	public void setHospitalized(Boolean hospitalized) {
		this.hospitalized = hospitalized;
	}

	public String getHospitalname() {
		return hospitalName;
	}

	public void setHospitalname(String hospitalname) {
		this.hospitalName = hospitalname;
	}

	public String getCardNum() {
		return cardNum;
	}

	public void setCardNum(String cardNum) {
		this.cardNum = cardNum;
	}

	public Boolean getNeuter() {
		return neuter;
	}

	public void setNeuter(Boolean neuter) {
		this.neuter = neuter;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
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
