package org.iii.ee100.animour.hospital.service;

import java.util.List;

import org.iii.ee100.animour.hospital.entity.Hospital;

public interface HospitalService {

	void insert(Hospital hospital);

	void update(Hospital hospital);

	void delete(String veterinaryHospId);

	List<Hospital> getAll();

	Hospital getOne(String veterinaryHospId);

	List<Hospital> getThreeForIndex();

}