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
	public void inser(HotelBean hotel) {
		// TODO Auto-generated method stub

	}

	@Override
	public void update(HotelBean hotel) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(Long id) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<HotelBean> getAll(){
		// TODO Auto-generated method stub
		return hotelDao.getAll();
	}

	@Override
	public HotelBean getone(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

}
