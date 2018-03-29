package org.iii.ee100.animour.hotel.dao;

import static org.junit.Assert.fail;

import org.iii.ee100.animour.hotel.entity.Hotel;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class HotelDaoTest {
	@Autowired
	private HotelDao hotelDao;

	@Test
	public void testFindAll() {
		Iterable<Hotel> hotels=hotelDao.findAll();
		
		for(Hotel hotel:hotels) {
			System.out.println(hotel);
		}
		
	}

}
