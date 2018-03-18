package org.iii.ee100.animour.halfway.service;

import java.util.List;

import org.iii.ee100.animour.home.dao.AnimalDao;
import org.iii.ee100.animour.home.dao.AnimalDaoImpl;
import org.iii.ee100.animour.home.dao.DogDaoImpl;
import org.iii.ee100.animour.home.entity.Animal;
import org.springframework.stereotype.Service;

@Service
public class AnimalServiceImpl implements AnimalService {
	
	private org.iii.ee100.animour.halfway.dao.AnimalDao animalDao;
	//AnimalDaoImpl dao = null;
	
	public AnimalServiceImpl() throws InstantiationException, IllegalAccessException, ClassNotFoundException  {
		
		//file. IO get aniamlDao impl ?
		
		String daoImplName = "org.iii.ee100.animour.halfway.dao.AnimalDaoImpl";
		animalDao = (org.iii.ee100.animour.halfway.dao.AnimalDao) Class.forName(daoImplName).newInstance();
	}
	
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
		org.iii.ee100.animour.halfway.dao.AnimalDaoImpl dao = new org.iii.ee100.animour.halfway.dao.AnimalDaoImpl();
		return dao.findTopSix();
	}


	
	
}
