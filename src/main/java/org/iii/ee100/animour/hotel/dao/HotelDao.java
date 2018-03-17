package org.iii.ee100.animour.hotel.dao;

import java.util.List;

import org.iii.ee100.animour.hotel.entity.HotelBean;

public interface HotelDao {

	void insert(HotelBean hotel, java.util.Date checkIn);

	void update(HotelBean customer);

	void delete(Long hotelId);

	HotelBean FindById(Long hotelId);

	List<HotelBean> getAll();

}