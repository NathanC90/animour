package org.iii.ee100.sample.band;

import org.junit.Assert;
import org.junit.Test;

public class BandDaoTest {

	@Test
	public void CRUDTest() {

		BandDao dao = new BandDao();
		int initialSize = dao.findAll().size();

		Assert.assertEquals(initialSize, dao.findAll().size());

		Band band = new Band();
		band.setName("Children of Bodom");
		band.setMember(5);
		dao.insert(band);

		Assert.assertEquals(initialSize + 1, dao.findAll().size());
		Assert.assertEquals(band.getName(), dao.findById(band.getId()).getName());

		dao.delete(band.getId());
		Assert.assertEquals(initialSize, dao.findAll().size());
		
		
		dao.update(band);
		band.setName("Arch Enemy");
		
		System.out.println(band.getName()); 

	}

}
