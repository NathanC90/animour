package org.iii.ee100.animour.halfway.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.iii.ee100.animour.common.entity.GenericEntity;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@Entity
@Table(name="CITY")
public class City extends GenericEntity{
	
	@Column(name="NAME")
	private String name;
	
	@Column(name="ANIMAL_COUNT")
	private Long animalCount;
	
	@OneToMany(mappedBy = "city", cascade = { CascadeType.ALL })
	private List<Animal> animals;

	
}
