package org.iii.ee100.animour.hotel.service;

import java.util.List;

import org.iii.ee100.animour.hotel.dao.HotelDao;
import org.iii.ee100.animour.hotel.entity.Hotel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class HotelService{
//	private HotelDao hotelDao;
//	
//	public HotelService () throws InstantiationException, IllegalAccessException, ClassNotFoundException {
//		String daoImplName = "org.iii.ee100.animour.hotel.dao.HotelDaoImpl";
//		hotelDao =(HotelDao)Class.forName(daoImplName).newInstance();
//	}
	@Autowired
	HotelDao hotelDao;

	public Hotel inser(Hotel hotel) {
		return hotelDao.insert(hotel);

	}

	public Hotel update(Hotel hotel) {
		return hotelDao.update(hotel);
	}

	public void delete(Long id) {
		hotelDao.delete(id);
	}

	public List<Hotel> getAll(){
		return hotelDao.getAll();
	}

	public Hotel getone(Long id) {
		return hotelDao.FindById(id);
	}


	public List<Hotel> getSix() {
		
		return hotelDao.getSix();
	}
	
	
	

}
