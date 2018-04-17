package org.iii.ee100.animour.halfway.dao;

import java.util.List;

import org.iii.ee100.animour.halfway.entity.Animal;
import org.iii.ee100.animour.halfway.entity.City;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

public interface AnimalDao extends JpaRepository<Animal, Long>,JpaSpecificationExecutor<Animal> {
	//List<Animal> findTop6ByUpload(Timestamp upload, Pageable pageable);
	List<Animal> findByOrderByUploadDesc();
	List<Animal> findTop6ByOrderByUploadDesc();
	List<Animal> findBySpecieOrderByUploadDesc(String specie);
	Page<Animal> findByCity(City city, Pageable pageable);
	
	Page<Animal> findByNameContaining(String name,Pageable pageable);
	
//	@Query(value="SELECT DISTINCT city_id FROM ANIMAL", nativeQuery = true)
//	List<String> findDistinctCity();
	
//	@Query(value="SELECT count(*) FROM ANIMAL where CITY = ?1", nativeQuery = true)
//	Long findCityCount(Long cityId);
}
