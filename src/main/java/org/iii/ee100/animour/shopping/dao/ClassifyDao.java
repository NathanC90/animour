package org.iii.ee100.animour.shopping.dao;

import java.util.List;

import org.iii.ee100.animour.shopping.entity.Classify;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ClassifyDao extends JpaRepository<Classify, Long> {
	
	List<Classify> findByClassifyNameContaining(String name);
}
