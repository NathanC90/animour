package org.iii.ee100.animour.hospital.dao;

import java.sql.SQLException;
import java.util.List;

import org.iii.ee100.animour.hospital.entity.Hospital;

public interface HospitalDao {

	Hospital insertHosp(Hospital hospital) throws SQLException;

	Hospital updateHosp(Hospital hospital) throws SQLException;

	Hospital selectHosp(String id);

	List<Hospital> selectAllHosp(String id);

	List<Hospital> selectAllHosp();

	void deleteHosp(String id);

}