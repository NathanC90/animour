package org.iii.ee100.animour.hospital.entity;

import java.util.List;

public class Hospital {

	Integer hospNo;
	String veterinaryHospId;
	String veterinaryHospName;
	String veterinaryHospTel;
	String veterinaryHospAddr;
	List<Hospital> hospbean;
	
	
	
	
//	public Hospital(String veterinaryHospId, String veterinaryHospName, String veterinaryHospTel,
//			String veterinaryHospAddr) {
//		super();
//		this.veterinaryHospId = veterinaryHospId;
//		this.veterinaryHospName = veterinaryHospName;
//		this.veterinaryHospTel = veterinaryHospTel;
//		this.veterinaryHospAddr = veterinaryHospAddr;
//	}
	
	
	public Integer getHospNo() {
		return hospNo;
	}
	public void setHospNo(Integer hospNo) {
		this.hospNo = hospNo;
	}
	public String getVeterinaryHospId() {
		return veterinaryHospId;
	}
	public void setVeterinaryHospId(String veterinaryHospId) {
		this.veterinaryHospId = veterinaryHospId;
	}
	public String getVeterinaryHospName() {
		return veterinaryHospName;
	}
	public void setVeterinaryHospName(String veterinaryHospName) {
		this.veterinaryHospName = veterinaryHospName;
	}
	public String getVeterinaryHospTel() {
		return veterinaryHospTel;
	}
	public void setVeterinaryHospTel(String veterinaryHospTel) {
		this.veterinaryHospTel = veterinaryHospTel;
	}
	public String getVeterinaryHospAddr() {
		return veterinaryHospAddr;
	}
	public void setVeterinaryHospAddr(String veterinaryHospAddr) {
		this.veterinaryHospAddr = veterinaryHospAddr;
	}
	public List<Hospital> getHospbean() {
		return hospbean;
	}
	public void setHospbean(List<Hospital> hospbean) {
		this.hospbean = hospbean;
	}

	
	
}
