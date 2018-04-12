package org.iii.ee100.animour.halfway.dao;

import java.util.List;

import org.iii.ee100.animour.halfway.entity.Adoption;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AdoptionDao extends JpaRepository<Adoption, Long>{

	List<Adoption> findByacceptRequestIsNull();
}
