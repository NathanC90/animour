package org.iii.ee100.animour.hospital.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="HOSPITAL")
public class Hospital {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="ID")
	Long id;
//	@Column(name="ID")
//	String id;
	@Column(name="NAME")
	String name;
	@Column(name="TEL")
	String tel;
	@Column(name="ADDRESS")
	String address;
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
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Override
	public String toString() {
		return "Hospital [id=" + id + ", name=" + name + ", tel=" + tel + ", address=" + address + "]";
	}
	



	
	
}
