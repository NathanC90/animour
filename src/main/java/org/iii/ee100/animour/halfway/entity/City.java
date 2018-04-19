package org.iii.ee100.animour.halfway.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name="CITY")
public class City {
	
	@Id
	@Column(name="ID")
	private Long id;
	
	@Column(name="NAME")
	private String name;
	
	@Column(name="ANIMAL_COUNT")
	private Long animalCount;
	
	@OneToMany(mappedBy = "city", cascade = { CascadeType.ALL })
	private List<Animal> animals;

	
}
