package org.iii.ee100.sample.hotel;

import static org.junit.Assert.*;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.iii.ee100.animour.hotel.dao.HotelDaoImpl;
import org.iii.ee100.animour.hotel.entity.HotelBean;
import org.junit.Test;

public class HotelDaoImplTest {

	@Test
	public void testGetAll() throws SQLException {
		HotelDaoImpl dao = new HotelDaoImpl();
		List<HotelBean> anwser=dao.getAll();
		
		System.out.println(anwser);
		
	}

}
