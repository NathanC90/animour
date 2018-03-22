package org.iii.ee100.animour.halfway.service;

import java.util.List;

import org.iii.ee100.animour.halfway.dao.AnimalDao;
import org.iii.ee100.animour.halfway.entity.Animal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AnimalService {
	
	@Autowired
	private AnimalDao animalDao;
	
	
	public void insert(Animal animal) {
		animalDao.insert(animal);
	}

	public void update(Animal animal) {
		animalDao.update(animal);		
	}

	public void delete(Long id) {
		animalDao.delete(id);
	}

	public List<Animal> getAll() {
		return animalDao.findAll();
	}

	public Animal getOne(Long id) {
		return animalDao.findOne(id);
	}
	
	public List<Animal> getSix(){
		return animalDao.findTopSix();
	}


	
	
}
