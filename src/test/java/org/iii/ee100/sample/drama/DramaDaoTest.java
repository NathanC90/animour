package org.iii.ee100.sample.drama;

import static org.junit.Assert.*;

import org.junit.Assert;
import org.junit.Test;

public class DramaDaoTest {
	
	@Test
	public void CRUDTest() {
		DramaDao dao = new DramaDao();
		Assert.assertEquals(0, dao.findAll().size());
	

	
		Drama drama=new Drama();
		drama.setDname("TBBT1");
		drama.setSeason(1);
		drama.setEpisode(17);
		drama.setYear(2007);
		drama.setCountry("USA");
		
		dao.insert(drama);
		Assert.assertEquals(1, dao.findAll().size());
	

	
		drama.setDname("Elementary");
		drama.setSeason(1);
		drama.setEpisode(24);
		drama.setYear(2012);
		drama.setCountry("USA");
		dao.update(drama);
		
		Assert.assertEquals(drama.getDname(),dao.findById(drama.getId()).getDname());
	
		

		dao.delete(drama.getId());
		Assert.assertEquals(0, dao.findAll().size());
	

}
}