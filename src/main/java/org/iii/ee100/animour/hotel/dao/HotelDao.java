package org.iii.ee100.animour.hotel.dao;

import java.sql.SQLException;
import java.util.List;

import org.iii.ee100.animour.hotel.entity.HotelBean;

public interface HotelDao {

	void insert(HotelBean hotel, java.util.Date checkIn);

	void update(HotelBean customer) throws SQLException;

	void delete(Long hotelId) throws SQLException;

	HotelBean FindByCno(Long cno) throws SQLException;

	List<HotelBean> getAll() throws SQLException;

}