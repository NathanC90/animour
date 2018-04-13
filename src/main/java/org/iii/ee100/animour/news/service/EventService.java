package org.iii.ee100.animour.news.service;

import java.util.List;

import org.assertj.core.util.Lists;
import org.iii.ee100.animour.news.dao.EventDao;
import org.iii.ee100.animour.news.entity.Event;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EventService{
	@Autowired
	private EventDao eventDao;
		
	
	
	
	public void insert(Event tickets) {
		eventDao.save(tickets);
	}
	
	
	
	public void update(Event tickets) {
		eventDao.save(tickets);
	}

	
	
	public void delete(Long subject_id) {
		eventDao.delete(subject_id);
	}

	
	
	public List<Event> getAll() {
		return Lists.newArrayList(eventDao.findAll());
	}

	
	
	public Event getOne(Long subject_id) {
		return eventDao.findOne(subject_id);
	}
}
