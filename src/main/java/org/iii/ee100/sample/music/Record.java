package org.iii.ee100.sample.music;

import java.sql.Date;

public class Record {
	private long id;
	private String reclab;
	private String country;
	private String area;

	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getReclab() {
		return reclab;
	}
	public void setReclab(String reclab) {
		this.reclab = reclab;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	
}
