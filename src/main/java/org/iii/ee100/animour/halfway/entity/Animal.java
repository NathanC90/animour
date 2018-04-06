package org.iii.ee100.animour.halfway.entity;

import java.sql.Timestamp;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "ANIMAL")
public class Animal {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID") // for system
	private Long id;

	@Column(name = "STATUS", columnDefinition=" default '開放認養'") // for system
	private String status;

	@Column(name = "NAME")
	private String name;

	@Column(name = "SPECIE")
	private String specie;

	@Column(name = "COLOR")
	private String color;

	@Column(name = "GENDER")
	private String gender;

	@Column(name = "FOUND")
	private java.sql.Date found;

	@Column(name = "UPLOAD") // for system
	private Timestamp upload;

	@Column(name = "CITY")
	private String city;

	@Column(name = "DISTRICT")
	private String district;

	@Column(name = "HOSPITALIZED", columnDefinition = "BOOLEAN default 'FALSE'")
	private Boolean hospitalized;

	@Column(name = "HOSPITALNAME")
	private String hospitalname;

	@Column(name = "CARD_NUM")
	private String cardNum;

	@Column(name = "NEUTER", columnDefinition = "BOOLEAN default 'FALSE'")
	private Boolean neuter;

	@Column(name = "REMARK", columnDefinition = "TEXT")
	private String remark;

	@Column(name = "FILE_NAME")
	private String fileName;

	@Column(name = "MEMBER_ID")
	private Long memberId;

	@Override
	public String toString() {
		return "Animal [id=" + id + ", status=" + status + ", name=" + name + ", specie=" + specie + ", color=" + color
				+ ", gender=" + gender + ", found=" + found + ", upload=" + upload + ", city=" + city + ", district="
				+ district + ", hospitalized=" + hospitalized + ", hospitalname=" + hospitalname + ", cardNum=" + cardNum + ", neuter=" + neuter + ", remark=" + remark + ", fileName="
				+ fileName + ", memberId=" + memberId + "]";
	}

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
		return hospitalname;
	}

	public void setHospitalname(String hospitalname) {
		this.hospitalname = hospitalname;
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
