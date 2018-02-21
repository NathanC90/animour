package org.iii.ee100.sample.shoebrand;

import java.sql.Date;

public class Shoe {

	private long id; // 在DB是自動產生
	private String name;
	private String color; // color -> style
	private int price; // price -> people
	private Date launch; // launch -> found

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public Date getLaunch() {
		return launch;
	}

	public void setLaunch(Date launch) {
		this.launch = launch;
	}

}
