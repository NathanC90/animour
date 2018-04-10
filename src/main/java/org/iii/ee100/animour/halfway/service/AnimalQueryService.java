package org.iii.ee100.animour.halfway.service;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.iii.ee100.animour.halfway.dao.AnimalDao;
import org.iii.ee100.animour.halfway.entity.Animal;
import org.iii.ee100.animour.halfway.entity.AnimalQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

@Service(value = "animalQueryService")
public class AnimalQueryService {

	@Autowired
	private AnimalDao animalDao;

	public Page<Animal> findAnimalNoCriteria(Integer page, Integer size) {
		Pageable pageable = new PageRequest(page, size, Sort.Direction.ASC, "id");
		return animalDao.findAll(pageable);
	}

	public Page<Animal> findAnimalCriteria(Integer page, Integer size, final AnimalQuery animalQuery) {
		Pageable pageable = new PageRequest(page, size, Sort.Direction.ASC, "id");
		Page<Animal> animalPage = animalDao.findAll(new Specification<Animal>() {
			@Override
			public Predicate toPredicate(Root<Animal> root, CriteriaQuery<?> query, CriteriaBuilder criteriaBuilder) {
				List<Predicate> list = new ArrayList<Predicate>();
				if (null != animalQuery.getName() && !"".equals(animalQuery.getName())) {
					list.add(criteriaBuilder.equal(root.get("name").as(String.class), animalQuery.getName()));
				}
				if (null != animalQuery.getSpecie() && !"".equals(animalQuery.getSpecie())) {
					list.add(criteriaBuilder.equal(root.get("isbn").as(String.class), animalQuery.getSpecie()));
				}
				if (null != animalQuery.getColor() && !"".equals(animalQuery.getColor())) {
					list.add(criteriaBuilder.equal(root.get("author").as(String.class), animalQuery.getColor()));
				}
				Predicate[] p = new Predicate[list.size()];
				return criteriaBuilder.and(list.toArray(p));
			}
		}, pageable);
		return animalPage;
	}
}
