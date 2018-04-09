package org.iii.ee100.animour.salon.service;

import java.util.List;

import org.assertj.core.util.Lists;
import org.iii.ee100.animour.salon.dao.ReservationDao;
import org.iii.ee100.animour.salon.entity.Reservation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReservationService {
	
	@Autowired
	ReservationDao reservationDao;
	
	public List<Reservation> getAll() {
		return Lists.newArrayList(reservationDao.findAll());
	}

}
