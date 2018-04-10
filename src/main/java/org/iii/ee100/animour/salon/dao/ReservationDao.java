package org.iii.ee100.animour.salon.dao;

import java.util.List;

import org.iii.ee100.animour.salon.entity.Reservation;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ReservationDao extends JpaRepository<Reservation, Long> {
List<Reservation>findAll();
}
