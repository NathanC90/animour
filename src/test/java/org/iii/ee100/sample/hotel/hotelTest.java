package org.iii.ee100.sample.hotel;

import static org.junit.Assert.*;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import org.iii.ee100.animour.hotel.dao.HotelDao;
import org.iii.ee100.animour.hotel.entity.HotelBean;
import org.junit.Test;

public class hotelTest {
		
		
	

	public static void main(String[] args) {
		HotelDao dao = new HotelDao();
		HotelBean bean = new HotelBean();
//		bean.setDogName("co co");
//		Timestamp date = Timestamp.valueOf("2010-10-01 09:09:09");
//		bean.setCheckIn(date);
//		bean.setOnwer("Boen");
	//	bean.setHotelId(2L);
	//	dao.update(bean);
//		bean.setSpecies("拉布拉多");
//		bean.setTotal(10);
//		bean.setType("中");
		
		List<HotelBean> test1 =dao.getSix();
	//	Timestamp date = Timestamp.valueOf("2010-10-01 09:09:09");
	//	bean.setCheckIn(date);
	//	bean.setOnwer("Boen");
	//	bean.setHotelId(2L);
	//	dao.update(bean);
	//	bean.setSpecies("拉布拉多");
	//	bean.setTotal(10);
	//	bean.setType("中");
		
//		ArrayList<HotelBean> list =new ArrayList<>();
//HotelBean test1 =dao.insert(bean);
		System.out.println(test1);
	}

}
