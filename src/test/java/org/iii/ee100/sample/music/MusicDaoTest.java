package org.iii.ee100.sample.music;

import static org.junit.Assert.*;

import org.junit.Test;

public class MusicDaoTest {

	@Test
	public void crudTest() {
		
		MusicDao muDao = new MusicDao();
		
		assertEquals(0, muDao.findAll().size());
		
		Music music1 = new Music();
		
		music1.setTitle("Perfect");
		music1.setPname("Ed Sheeran");
		music1.setGenre("pop");
		music1.setClicks(3628);
		music1.setRdate(java.sql.Date.valueOf("2017-11-19"));
		
		muDao.insert(music1);
		
		assertEquals(1, muDao.findAll().size());
		
		music1.setClicks(26721);
		muDao.update(music1);
		assertEquals(music1.getClicks(), muDao.findById(music1.getId()).getClicks());
		
		muDao.delete(music1.getId());
		assertEquals(0, muDao.findAll().size());
	}
}
