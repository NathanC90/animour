package org.iii.ee100.animour.hospital.service;

import java.sql.SQLException;
import java.util.List;

import org.iii.ee100.animour.hospital.entity.Hospital;

public interface HospitalService {

	void insert(Hospital hospital) throws SQLException;

	void update(Hospital hospital) throws SQLException;

	void delete(String veterinaryHospId);

	List<Hospital> getAll();

	Hospital getOne(String veterinaryHospId);

}