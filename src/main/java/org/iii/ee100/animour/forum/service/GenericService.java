package org.iii.ee100.animour.forum.service;

import java.util.List;

import org.assertj.core.util.Lists;
import org.iii.ee100.animour.forum.entity.GenericEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

@Service
public class GenericService {
	
	private JpaRepository<Object, Long> dao;
	
	public void insert(GenericEntity genericEntity) {
		dao.save(genericEntity);

	}

	public void update(GenericEntity genericEntity) {
		dao.save(genericEntity);

	}

	public void delete(Long id) {
		dao.delete(id);

	}

	public List<Object> getAll() {
		return Lists.newArrayList(dao.findAll());
	}

	public Object getOne(Long id) {
		return dao.findOne(id);
	}
}
