package org.iii.ee100.animour.donate.service;

import java.util.List;

import org.iii.ee100.animour.donate.dao.DonateDao;
import org.iii.ee100.animour.donate.entity.Donate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DonateService {

	@Autowired
	DonateDao donateDao;

	public void insert(Donate donate) {
		donateDao.insert();
	}

	public void delete(Long id) {
		donateDao.delete(id);
	}

	public void update(Donate donate) {
		donateDao.update();
	}

	public List<Donate> getAll() {
		return donateDao.findAll();
	}

	public Donate getOne(Long id) {
		return donateDao.findById(id);
	}

}
