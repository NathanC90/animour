package org.iii.ee100.animour.halfway.service;

import org.iii.ee100.animour.halfway.dao.AnimalDao;
import org.iii.ee100.animour.halfway.entity.Animal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

@Service(value = "animalQueryService")
public class AnimalQueryService {

	@Autowired
	private AnimalDao animalDao;

	public Page<Animal> findBookNoCriteria(Integer page, Integer size) {
		Pageable pageable = new PageRequest(page, size, Sort.Direction.ASC, "id");
		return animalDao.findAll(pageable);
	}
	
	public Page<Animal> findAnimalCriteria(Integer page, Integer size, final BookQuery bookQuery) {
	
}
