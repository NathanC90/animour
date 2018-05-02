package org.iii.ee100.animour.halfway.service;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.iii.ee100.animour.halfway.entity.Animal;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

@Service
public class SpecificationHalfway {

	public static Specification<Animal> containsLike(String attribute, String value) {

		return new Specification<Animal>() {
			@Override
			public Predicate toPredicate(Root<Animal> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
				return cb.like(root.get(attribute), "%" + value + "%");
			}
		};
	}
}
