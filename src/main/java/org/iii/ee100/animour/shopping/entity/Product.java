package org.iii.ee100.animour.shopping.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name = "PRODUCT")
public class Product {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "ID")
	private Long id;
	@Column(name = "NAME", length = 50, nullable = false)
	private String name;
	@Column(name = "PRICE", nullable = false)
	private Integer price;
	@Column(name = "QUANTITY", nullable = false)
	private Long quantity;
	@Column(name = "MAKE_DATE", nullable = false)
	private java.sql.Timestamp makeDate;
	@Column(name = "EXPIRE", nullable = false)
	private Integer expire;
	@Column(name = "SHELVES_DATE", nullable = false)
	private java.sql.Date shelvesDate;
	@Column(name = "DESCRIPTION", length = 2000)
	private String description;

	@ManyToMany(cascade = CascadeType.PERSIST, fetch = FetchType.EAGER)
	@JoinTable(name = "PRODUCT_ORDERS",
			joinColumns = {@JoinColumn(name = "PRODUCT_ID", referencedColumnName = "ID")},
			inverseJoinColumns = {@JoinColumn(name = "ORDERS_ID", referencedColumnName = "ID")})
	private Set<Orders> orders = new HashSet<Orders>();

	@Override
	public String toString() {
		return "Product [id=" + id + ", name=" + name + ", price=" + price + ", quantity=" + quantity + ", makeDate="
				+ makeDate + ", expire=" + expire + ", shelvesDate=" + shelvesDate + ", description=" + description
				+ ", orders=" + orders + "]";
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

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public Long getQuantity() {
		return quantity;
	}

	public void setQuantity(Long quantity) {
		this.quantity = quantity;
	}

	public java.sql.Timestamp getMakeDate() {
		return makeDate;
	}

	public void setMakeDate(java.sql.Timestamp makeDate) {
		this.makeDate = makeDate;
	}

	public Integer getExpire() {
		return expire;
	}

	public void setExpire(Integer expire) {
		this.expire = expire;
	}

	public java.sql.Date getShelvesDate() {
		return shelvesDate;
	}

	public void setShelvesDate(java.sql.Date shelvesDate) {
		this.shelvesDate = shelvesDate;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Set<Orders> getOrders() {
		return orders;
	}

	public void setOrders(Set<Orders> orders) {
		this.orders = orders;
	}
}
