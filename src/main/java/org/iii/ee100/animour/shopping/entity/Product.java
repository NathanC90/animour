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
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.iii.ee100.animour.common.entity.GenericEntity;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "PRODUCT")
public class Product extends GenericEntity {

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
	
	@ManyToOne(cascade = CascadeType.PERSIST)
	@JoinColumn(name="CLASSIFY_ID", nullable = false)
	private Classify classify;

	@ManyToMany(cascade = CascadeType.PERSIST, fetch = FetchType.EAGER)
	@JoinTable(name = "PRODUCT_ORDERS",
			joinColumns = {@JoinColumn(name = "PRODUCT_ID", referencedColumnName = "ID")},
			inverseJoinColumns = {@JoinColumn(name = "ORDERS_ID", referencedColumnName = "ID")})
	private Set<Orders> orders = new HashSet<Orders>();

}
