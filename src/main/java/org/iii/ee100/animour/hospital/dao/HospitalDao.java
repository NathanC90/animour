package org.iii.ee100.animour.hospital.dao;

import java.util.List;

import org.iii.ee100.animour.hospital.entity.Hospital;

public interface HospitalDao {

	void insertHosp(Hospital hospital);// end of insert

	void updateHosp(Hospital hospital);//end update

	Hospital findOneHosp(String id);

	List<Hospital> findAllHosp();

	void deleteHosp(String id);

}