package org.iii.ee100.animour.news.dao;

import org.iii.ee100.animour.news.entity.Event;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EventDao extends CrudRepository<Event, Long> {

}
