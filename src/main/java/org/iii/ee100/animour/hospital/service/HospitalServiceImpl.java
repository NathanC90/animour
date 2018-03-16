package org.iii.ee100.animour.hospital.service;

import java.sql.SQLException;
import java.util.List;

import org.iii.ee100.animour.hospital.dao.HospitalDao;
import org.iii.ee100.animour.hospital.entity.Hospital;

public class HospitalServiceImpl implements HospitalService {

	private HospitalDao hospitalDao;
	
	
	@Override
	public void insert(Hospital hospital) throws SQLException {
		hospitalDao.insertHosp(hospital);
	}

	
	@Override
	public void update(Hospital hospital) throws SQLException {
		hospitalDao.updateHosp(hospital);		
	}

	
	@Override
	public void delete(String veterinaryHospId) {
		hospitalDao.deleteHosp(veterinaryHospId);
	}

	
	@Override
	public List<Hospital> getAll() {
		return hospitalDao.selectAllHosp();
	}

	@Override
	public Hospital getOne(String veterinaryHospId) {
		return hospitalDao.selectHosp(veterinaryHospId);
	}
}
