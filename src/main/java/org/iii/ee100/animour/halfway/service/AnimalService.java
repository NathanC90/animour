package org.iii.ee100.animour.halfway.service;

import java.sql.Timestamp;
import java.util.List;

import org.assertj.core.util.Lists;
import org.iii.ee100.animour.halfway.dao.AnimalDao;
import org.iii.ee100.animour.halfway.entity.Animal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
public class AnimalService {
	
	@Autowired
	private AnimalDao animalDao;
	
	
	public void insert(Animal animal) {
		animalDao.save(animal);
	}

	public void update(Animal animal) {
		animalDao.save(animal);		
	}

	public void delete(Long id) {
		animalDao.delete(id);
	}

	public List<Animal> getAll() {
		return Lists.newArrayList(animalDao.findAll());
	}

	public Animal getOne(Long id) {
		return animalDao.findOne(id);
	}
	
	public List<Animal> getSix(){
		return animalDao.findTop6ByOrderByUploadDesc();
	}


	
	
}
