package org.iii.ee100.animour.shopping.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import org.iii.ee100.animour.common.entity.GenericEntity;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@Entity
@Table(name="ORDERS")
public class Orders extends GenericEntity {
	
	@Column(name="NAME")
	private String name;
	
	@ManyToMany(cascade = CascadeType.PERSIST, fetch = FetchType.EAGER)
	@JoinTable(name="PRODUCT_ORDERS",	
			joinColumns={@JoinColumn(name="ORDERS_ID", referencedColumnName="ID")},
			inverseJoinColumns= {@JoinColumn(name="PRODUCT_ID", referencedColumnName="ID")})
	Set<Product> products = new HashSet<Product>();

}
