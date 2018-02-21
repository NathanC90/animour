package org.iii.ee100.sample.shoebrand;

import java.sql.*;
import java.util.List;

public class Shoebrand {
	private long id; // 在DB是自動產生
	private String name;
	private String style; //color -> style
	private String headq; //brand -> headq
	private int empnum; //  price -> people
	private Date found; // launch -> found
	private List<Shoe> shoes;
	
	// getters
	public long getId () {
		return id;
	}
	public String getName() {
		return name;
	}
	public String getStyle(){
		return style;
	}
	public String getHeadq() {
		return headq;
	}
	public int getEmpnum() {
		return empnum;
	}
	public Date getFound() {
		return found;
	}
	public List<Shoe> getList() {
		return shoes;
	}

	// setters
	public void setId(Long id) {
		this.id = id;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setStyle(String style) {
		this.style = style;
	}
	public void setHeadq(String headq) {
		this.headq = headq;
	}
	public void setEmpnum(int empnum) {
		this.empnum = empnum;
	}
	public void setFound(Date found) {
		this.found = found;
	}
	public void setList(List<Shoe> shoes) {
		this.shoes = shoes;
	}
}
