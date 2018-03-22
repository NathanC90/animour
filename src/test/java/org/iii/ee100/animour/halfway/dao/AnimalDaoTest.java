package org.iii.ee100.animour.halfway.dao;

import java.util.List;

import org.iii.ee100.animour.halfway.BaseTest;
import org.iii.ee100.animour.halfway.entity.Animal;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;


public class AnimalDaoTest extends BaseTest {
	
	@Autowired
	private AnimalDao animalDao;

	@Test
	public void testFindTopSix() {
		List<Animal> animals = animalDao.findTopSix();
		System.out.println("*********************************");
		for(Animal animal: animals) {
			
			System.out.println(animal);
		}
		System.out.println("*********************************");
		
		
	}

}
