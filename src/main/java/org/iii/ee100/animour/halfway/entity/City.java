package org.iii.ee100.animour.halfway.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

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

	@Override
	public String toString() {
		return "City [id=" + id + ", name=" + name + ", animalCount=" + animalCount + "]";
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

	public Long getAnimalCount() {
		return animalCount;
	}

	public void setAnimalCount(Long animalCount) {
		this.animalCount = animalCount;
	}

	public List<Animal> getAnimals() {
		return animals;
	}

	public void setAnimals(List<Animal> animals) {
		this.animals = animals;
	}


	
	
}
