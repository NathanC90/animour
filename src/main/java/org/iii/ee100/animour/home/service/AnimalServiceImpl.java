package org.iii.ee100.animour.home.service;

import java.util.List;

import org.iii.ee100.animour.home.dao.AnimalDao;
import org.iii.ee100.animour.home.dao.DogDaoImpl;
import org.iii.ee100.animour.home.entity.Animal;

public class AnimalServiceImpl implements AnimalService {
	
	private AnimalDao animalDao;
	
	
	public AnimalServiceImpl() throws InstantiationException, IllegalAccessException, ClassNotFoundException {
		
		//file. IO get aniamlDao impl ?
		
		String daoImplName = "org.iii.ee100.streetanimal.home.dao.DogDaoImpl";
		animalDao = (AnimalDao) Class.forName(daoImplName).newInstance();
	}
	
  
	public void insert(Animal animal) {
		// TODO Auto-generated method stub
		
	}

	public void update(Animal animal) {
		// TODO Auto-generated method stub
		
	}

	public void delete(Long id) {
		// TODO Auto-generated method stub
		
	}

	public List<Animal> getAll() {
		// TODO Auto-generated method stub
		return null;
	}

	public Animal getOne(Long id) {
		// TODO Auto-generated method stub
		return null;
	}


	
	
}
