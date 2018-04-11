package org.iii.ee100.animour.halfway.service;

import java.util.List;

import org.assertj.core.util.Lists;
import org.iii.ee100.animour.halfway.dao.AdoptionDao;
import org.iii.ee100.animour.halfway.entity.Adoption;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdoptionService {

	@Autowired
	private AdoptionDao adoptionDao;
	
	public void insert(Adoption adoption) {
		adoptionDao.save(adoption);
	}
	
	public void update(Adoption adoption) {
		adoptionDao.save(adoption);
	}

	public List<Adoption> getAll() {
		return Lists.newArrayList(adoptionDao.findAll());
	}

	public Adoption getOne(Long id) {
		return adoptionDao.findOne(id);
	}
}
