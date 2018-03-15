package org.iii.ee100.animour.halfway.service;

import java.util.List;

import org.iii.ee100.animour.home.entity.Animal;

public interface AnimalService {

	public void insert(Animal animal);

	public void update(Animal animal);

	public void delete(Long id);

	public List<Animal> getAll();

	public Animal getOne(Long id);
}
