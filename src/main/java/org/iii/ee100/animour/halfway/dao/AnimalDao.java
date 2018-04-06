package org.iii.ee100.animour.halfway.dao;

import java.sql.Timestamp;
import java.util.List;

import org.iii.ee100.animour.halfway.entity.Animal;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.CrudRepository;

public interface AnimalDao extends CrudRepository<Animal, Long> {
	//List<Animal> findTop6ByUpload(Timestamp upload, Pageable pageable);
	List<Animal> findByOrderByUploadDesc();
	List<Animal> findTop6ByOrderByUploadDesc();
}
