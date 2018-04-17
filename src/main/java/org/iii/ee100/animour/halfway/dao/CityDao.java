package org.iii.ee100.animour.halfway.dao;

import java.util.List;

import org.iii.ee100.animour.halfway.entity.City;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CityDao extends JpaRepository<City, Long> {
	List<City> findByOrderById();
	List<City> findByAnimalCountGreaterThanOrderByAnimalCountDesc(Long count);
}
