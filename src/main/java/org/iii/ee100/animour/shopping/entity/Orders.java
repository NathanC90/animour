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
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="ID")
	private Long id;
	@Column(name="NAME")
	private String name;
	
	@ManyToMany(cascade = CascadeType.PERSIST, fetch = FetchType.EAGER)
	@JoinTable(name="PRODUCT_ORDERS",	
			joinColumns={@JoinColumn(name="ORDERS_ID", referencedColumnName="ID")},
			inverseJoinColumns= {@JoinColumn(name="PRODUCT_ID", referencedColumnName="ID")})
	Set<Product> products = new HashSet<Product>();

	@Override
	public String toString() {
		return "Orders [id=" + id + ", name=" + name + ", products=" + products + "]";
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

	public Set<Product> getProducts() {
		return products;
	}

	public void setProducts(Set<Product> products) {
		this.products = products;
	}

	
}
