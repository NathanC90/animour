package org.iii.ee100.sample.fruitstore;

public class Fruit {
	Long fruit_id;
	Long product_id;
	String fruitName;
	int price;
	String psource;
	
	public Long getFruit_id() {
		return fruit_id;
	}
	public void setFruit_id(Long fruit_id) {
		this.fruit_id = fruit_id;
	}
	public Long getProduct_id() {
		return product_id;
	}
	public void setProduct_id(Long product_id) {
		this.product_id = product_id;
	}
	public String getFruitName() {
		return fruitName;
	}
	public void setFruitName(String fruitName) {
		this.fruitName = fruitName;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getPsource() {
		return psource;
	}
	public void setPsource(String psource) {
		this.psource = psource;
	}
}
