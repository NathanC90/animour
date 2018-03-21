package org.iii.ee100.animour.hotel.service;

import java.util.List;

import org.iii.ee100.animour.hotel.dao.HotelDao;
import org.iii.ee100.animour.hotel.entity.HotelBean;
import org.springframework.stereotype.Service;
@Service
public class HotelServiceImple implements HotelService {
	private HotelDao hotelDao;
	
	public HotelServiceImple () throws InstantiationException, IllegalAccessException, ClassNotFoundException {
		String daoImplName = "org.iii.ee100.animour.hotel.dao.HotelDaoImpl";
		hotelDao =(HotelDao)Class.forName(daoImplName).newInstance();
	}
	

	@Override
	public HotelBean inser(HotelBean hotel) {
		return hotelDao.insert(hotel);

	}

	@Override
	public HotelBean update(HotelBean hotel) {
		return hotelDao.update(hotel);
	}

	@Override
	public void delete(Long hotelId) {
		hotelDao.delete(hotelId);
	}

	@Override
	public List<HotelBean> getAll(){
		return hotelDao.getAll();
	}

	@Override
	public HotelBean getone(Long hotelId) {
		return hotelDao.FindById(hotelId);
	}


	@Override
	public List<HotelBean> getSix() {
		
		return hotelDao.getSix();
	}
	
	
	

}
