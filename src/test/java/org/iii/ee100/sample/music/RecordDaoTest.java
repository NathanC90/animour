package org.iii.ee100.sample.music;

import static org.junit.Assert.*;

import org.junit.Test;

public class RecordDaoTest {

	@Test
	public void crudTest() {
		
		RecordDao recDao = new RecordDao();
		
		assertEquals(0, recDao.findAll().size());
		
		Record record1 = new Record();
		
		record1.setReclab("Parlophone");
		record1.setCountry("UK");
		record1.setArea("Europe");
		recDao.insert(record1);
		
		assertEquals(1, recDao.findAll().size());
		
		record1.setCountry("Australia");
		recDao.update(record1);
		assertEquals(record1.getCountry(), recDao.findById(record1.getId()).getCountry());
		
		recDao.delete(record1.getId());
		assertEquals(0, recDao.findAll().size());
	}
}
