package org.iii.ee100.sample.fruitstore;

import static org.junit.Assert.assertEquals;

import org.iii.ee100.sample.fruitstore.FruitStore;
import org.junit.Test;

public class FruitDaoTest {
	
	@Test
	public void testCrud() {
			FruitStoreDao dao = new FruitStoreDao();
		
			//test insert
			FruitStore fts = new FruitStore();
			assertEquals(6, dao.findAll().size());
			fts.setStoreName("appleStore");
			fts.setAddress("Taipei");
			fts.setPhoneNumber("02-123654");
			fts.setBusinessHours(java.sql.Time.valueOf("12:00:00"));
			dao.insert(fts);
			assertEquals(7, dao.findAll().size());
			
			//test update
			fts.setStoreName("grapeStore");
			fts.setAddress("Japan");
			fts.setPhoneNumber("02-987654");
			fts.setBusinessHours(java.sql.Time.valueOf("15:30:00"));
			fts.setId(fts.getId());
			dao.update(fts);
			assertEquals(fts.getStoreName(), dao.findById(fts.getId()).getStoreName());
			assertEquals(fts.getAddress(), dao.findById(fts.getId()).getAddress());
			assertEquals(fts.getPhoneNumber(), dao.findById(fts.getId()).getPhoneNumber());
			assertEquals(fts.getBusinessHours(), dao.findById(fts.getId()).getBusinessHours());
			
			//test delete
			dao.delete(fts.getId());
			assertEquals(6, dao.findAll().size());
			
			//test findAll
			assertEquals(6, dao.findAll().size());
			
	}
}
