package org.iii.ee100.animour.halfway.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AnimalServiceImpl {
	
	@Autowired
	private org.iii.ee100.animour.halfway.dao.AnimalDao animalDao;
	
	
	public void insert(org.iii.ee100.animour.halfway.entity.Animal animal) {
		animalDao.insert(animal);
	}

	public void update(org.iii.ee100.animour.halfway.entity.Animal animal) {
		animalDao.update(animal);		
	}

	public void delete(Long id) {
		animalDao.delete(id);
	}

	public List<org.iii.ee100.animour.halfway.entity.Animal> getAll() {
		return animalDao.findAll();
	}

	public org.iii.ee100.animour.halfway.entity.Animal getOne(Long id) {
		return animalDao.findOne(id);
	}
	
	public List<org.iii.ee100.animour.halfway.entity.Animal> getSix(){
		org.iii.ee100.animour.halfway.dao.AnimalDao dao = new org.iii.ee100.animour.halfway.dao.AnimalDao();
		return dao.findTopSix();
	}


	
	
}
