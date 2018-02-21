package org.iii.ee100.sample.fruitstore;

import java.util.List;

public class FruitStore {
	private long id;
	private String storeName;
	private String address;
	private String phoneNumber;
	private java.sql.Time businessHours;
	private List<Fruit> fruit_list;
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getStoreName() {
		return storeName;
	}
	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public java.sql.Time getBusinessHours() {
		return businessHours;
	}
	public void setBusinessHours(java.sql.Time businessHours) {
		this.businessHours = businessHours;
	}
	public List<Fruit> getFruit_list() {
		return fruit_list;
	}
	public void setFruit_list(List<Fruit> fruit_list) {
		this.fruit_list = fruit_list;
	}
}
