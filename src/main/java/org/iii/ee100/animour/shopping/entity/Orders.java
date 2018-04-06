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
@Table(name="ORDERS")
public class Orders {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="ID")
	private Long id;
	@Column(name="ORDERS_NAME")
	private String ordersName;
	
	@ManyToMany(cascade = CascadeType.PERSIST, fetch = FetchType.EAGER)
	@JoinTable(name="PRODUCT_ORDERS",	
			joinColumns={@JoinColumn(name="ORDERS_ID", referencedColumnName="ID")},
			inverseJoinColumns= {@JoinColumn(name="PRODUCT_ID", referencedColumnName="ID")})
	Set<Product> products = new HashSet<Product>();

	public Long getId() {
		return id;
	}

	@Override
	public String toString() {
		return "Orders [id=" + id + ", ordersName=" + ordersName + "]";
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getOrdersName() {
		return ordersName;
	}

	public void setOrdersName(String ordersName) {
		this.ordersName = ordersName;
	}

	public Set<Product> getProducts() {
		return products;
	}

	public void setProducts(Set<Product> products) {
		this.products = products;
	}
}
