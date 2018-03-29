package org.iii.ee100.animour.halfway.dao;

import org.iii.ee100.animour.halfway.entity.Animal;
import org.springframework.data.repository.CrudRepository;

public interface AnimalDao extends CrudRepository<Animal, Long> {

}
