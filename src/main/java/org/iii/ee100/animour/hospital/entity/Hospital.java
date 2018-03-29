package org.iii.ee100.animour.hospital.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="HOSP")
public class Hospital {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="NO")
	Long no;
	@Column(name="ID")
	String id;
	@Column(name="NAME")
	String name;
	@Column(name="TEL")
	String tel;
	@Column(name="ADDR")
	String addr;
	
	public Long getNo() {
		return no;
	}
	public void setNo(Long no) {
		this.no = no;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
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
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}


	
	
}
