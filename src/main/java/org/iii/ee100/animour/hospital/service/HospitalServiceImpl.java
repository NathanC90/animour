package org.iii.ee100.animour.hospital.service;

import java.util.List;

import org.iii.ee100.animour.hospital.dao.HospitalDao;
import org.iii.ee100.animour.hospital.entity.Hospital;
import org.springframework.stereotype.Service;

@Service
public class HospitalServiceImpl implements HospitalService  {

	private HospitalDao hospitalDao;
	
	@Override
	public void insert(Hospital hospital)  {
		hospitalDao.insertHosp(hospital);
	}

	

	@Override
	public void update(Hospital hospital)  {
		hospitalDao.updateHosp(hospital);		
	}

	

	@Override
	public void delete(String veterinaryHospId) {
		hospitalDao.deleteHosp(veterinaryHospId);
	}


	@Override
	public List<Hospital> getAll() {
		return hospitalDao.findAllHosp();
	}


	@Override
	public Hospital getOne(String veterinaryHospId) {
		return hospitalDao.findOneHosp(veterinaryHospId);
	}
}
