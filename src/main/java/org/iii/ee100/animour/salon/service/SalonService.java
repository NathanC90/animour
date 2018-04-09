package org.iii.ee100.animour.salon.service;

import org.iii.ee100.animour.hotel.entity.Hotel;
import org.iii.ee100.animour.salon.dao.SalonDao;
import org.iii.ee100.animour.salon.entity.Salon;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SalonService {
	
	@Autowired
	private SalonDao salonDao;

	public void delete(Salon salon) {
		salonDao.delete(salon);
	}

	public Iterable<Salon> findAll() {
		return salonDao.findAll();
	}

	public Salon findOne(Long id) {
		return salonDao.findOne(id);
	}

	public Salon update(Salon salon) {
		return salonDao.save(salon);
		
	}
	
	
	

}
