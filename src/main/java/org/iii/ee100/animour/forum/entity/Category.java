package org.iii.ee100.animour.forum.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.iii.ee100.animour.common.entity.GenericEntity;

@Entity
@Table(name = "CATEGORY")
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getArticleQuantity() {
		return getArticle().size();
	}

	public void setArticleQuantity(int articleQuantity) {
		this.articleQuantity = articleQuantity;
	}

	public List<Article> getArticle() {
		return article;
	}

	public void setArticle(List<Article> article) {
		this.article = article;
	}

}
