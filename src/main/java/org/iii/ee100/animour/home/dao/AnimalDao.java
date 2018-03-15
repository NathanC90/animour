package org.iii.ee100.animour.home.dao;

import java.util.List;

import org.iii.ee100.animour.home.entity.Animal;

public interface AnimalDao {
	
	public void insert(Animal animal);

	public void update(Animal animal);

	public void delete(Long id);

	public List<Animal> findAll();

	public Animal findOne(Long id);

}
