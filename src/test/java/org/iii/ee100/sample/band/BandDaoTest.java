package org.iii.ee100.sample.band;

import org.junit.Assert;
import org.junit.Test;

public class BandDaoTest {

	@Test
	public void CRUDTest() {

		BandDao dao = new BandDao();
		Assert.assertEquals(0, dao.findAll().size());

		Band band = new Band();
		band.setName("Children of Bodom");
		band.setMember(5);

		dao.insert(band);
		Assert.assertEquals(1, dao.findAll().size());

		band.setName("Bring Me The Horizen");
		band.setMember(5);

		Assert.assertEquals(band.getName(), dao.findById(band.getId()).getName());

		dao.delete(band.getId());
		Assert.assertEquals(0, dao.findAll().size());

	}

}
