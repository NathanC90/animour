package org.iii.ee100.animour.hotel.service;

import java.util.List;

import org.iii.ee100.animour.hotel.entity.HotelBean;

public interface HotelService {
	
	
	
	public HotelBean inser(HotelBean hotel);

	public HotelBean update(HotelBean hotel);

	public void delete(Long id);

	public List<HotelBean> getAll();

	public HotelBean getone(Long id);
	
	public List<HotelBean> getSix();

}
