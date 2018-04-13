package org.iii.ee100.animour.news.service;

import java.util.List;

import org.assertj.core.util.Lists;
import org.iii.ee100.animour.news.dao.TicketDao;
import org.iii.ee100.animour.news.entity.Ticket;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TicketService{
	@Autowired
	private TicketDao ticketDao;
		
	
	
	
	public void insert(Ticket tickets) {
		ticketDao.save(tickets);
	}
	
	
	
	public void update(Ticket tickets) {
		ticketDao.save(tickets);
	}

	
	
	public void delete(Long subject_id) {
		ticketDao.delete(subject_id);
	}

	
	
	public List<Ticket> getAll() {
		return Lists.newArrayList(ticketDao.findAll());
	}

	
	
	public Ticket getOne(Long subject_id) {
		return ticketDao.findOne(subject_id);
	}
}
