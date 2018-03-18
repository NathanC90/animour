package org.iii.ee100.animour.shopping.entity;

public class ProductBean {
	private Long id;
	private String name;
	private Double price;
	private Long quantity;
	private java.sql.Timestamp make;
	private Integer expire;
	
	@Override
	public String toString() {
		return "ProductBean [id=" + id + ", name=" + name + ", price=" + price + ", quantity=" + quantity + ", make="
				+ make + ", expire=" + expire + "]";
	}

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

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public Long getQuantity() {
		return quantity;
	}

	public void setQuantity(Long quantity) {
		this.quantity = quantity;
	}

	public java.sql.Timestamp getMake() {
		return make;
	}

	public void setMake(java.sql.Timestamp make) {
		this.make = make;
	}

	public Integer getExpire() {
		return expire;
	}

	public void setExpire(Integer expire) {
		this.expire = expire;
	}
}
