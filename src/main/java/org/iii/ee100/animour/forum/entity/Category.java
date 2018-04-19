package org.iii.ee100.animour.forum.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.iii.ee100.animour.common.entity.GenericEntity;

import lombok.Data;

@Entity
@Table(name = "CATEGORY")
@Data
public class Category extends GenericEntity {

	@Column(name = "NAME", unique = true)
	private String name;

	@Transient
	private int articleQuantity;

	@OneToMany(mappedBy = "category", cascade = { CascadeType.ALL })
	private List<Article> article;

	@Override
	public String toString() {
		return "Category [id=" + getId() + ", name=" + name + ", articleQuantity=" + articleQuantity + "]";
	}

}
