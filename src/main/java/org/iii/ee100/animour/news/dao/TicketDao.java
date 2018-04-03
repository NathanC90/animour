package org.iii.ee100.animour.news.dao;

import org.iii.ee100.animour.news.entity.Ticket;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TicketDao extends CrudRepository<Ticket, Long> {

}
