package org.iii.ee100.animour.forum.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
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

	@OneToMany(fetch = FetchType.EAGER, mappedBy = "category", cascade = { CascadeType.ALL })
	private List<Article> article;

}
