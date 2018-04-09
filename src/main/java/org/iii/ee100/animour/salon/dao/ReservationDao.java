package org.iii.ee100.animour.salon.dao;

import org.iii.ee100.animour.salon.entity.Reservation;
import org.springframework.data.repository.CrudRepository;

public interface ReservationDao extends CrudRepository<Reservation, Long> {

}
