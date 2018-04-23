package org.iii.ee100.animour.forum.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.iii.ee100.animour.common.entity.GenericEntity;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "CATEGORY")
@Setter
@Getter
public class Category extends GenericEntity {

	@Column(name = "NAME", unique = true)
	private String name;

	@Transient
	private int articleQuantity;

}
