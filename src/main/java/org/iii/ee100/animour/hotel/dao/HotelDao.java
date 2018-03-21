package org.iii.ee100.animour.hotel.dao;

import java.util.List;

import org.iii.ee100.animour.hotel.entity.HotelBean;

public interface HotelDao {


	HotelBean update(HotelBean customer);

	void delete(Long hotelId);

	HotelBean FindById(Long hotelId);

	List<HotelBean> getAll();

	HotelBean insert(HotelBean bean);

}