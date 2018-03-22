package org.iii.ee100.animour.halfway.service;

import java.util.List;

import org.iii.ee100.animour.halfway.BaseTest;
import org.iii.ee100.animour.halfway.entity.Animal;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;


public class AnimalServiceTest  extends BaseTest  {

	@Autowired
	private AnimalService animalService;
	
	@Test
	public void testGetSix() {
		List<Animal> animals = animalService.getSix();
		for(Animal animal:animals) {
			System.out.println(animal);
		}
	}

}
