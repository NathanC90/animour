package org.iii.ee100.animour.shopping.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="CLASSIFY")
public class Classify {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="ID")
	private Long id;
	@Column(name="CLASSIFY_NAME", length = 50, nullable = false)
	private String classifyName;

	@Override
	public String toString() {
		return "Classify [id=" + id + ", classifyName=" + classifyName + "]";
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getClassifyName() {
		return classifyName;
	}

	public void setClassifyName(String classifyName) {
		this.classifyName = classifyName;
	}

}
