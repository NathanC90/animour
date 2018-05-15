package org.iii.ee100.animour.shopping.entity;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.iii.ee100.animour.common.entity.GenericEntity;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@Entity
@Table(name="CLASSIFY")
public class Classify extends GenericEntity {
	
	@Column(name="NAME", length = 50, nullable = false)
	private String name;
	
//	@OneToMany(mappedBy="classify", cascade=CascadeType.ALL, fetch=FetchType.EAGER)
	@OneToMany
	private Set<Product> product;
	
}
