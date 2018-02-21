package org.iii.ee100.sample.shoebrand;

import static org.junit.Assert.*;

import org.iii.ee100.sample.shoebrand.Shoebrand;
import org.iii.ee100.sample.shoebrand.ShoebrandDao;
import org.junit.Test;

public class ShoebrandDaoTest {

	@Test
	public void crudTest() {

		ShoebrandDao sd = new ShoebrandDao();

		assertEquals(0, sd.findAll().size()); // initial size = 0

		Shoebrand sb1 = new Shoebrand ();
		sb1.setName("Adidas");
		sb1.setStyle("Sport");
		sb1.setHeadq("GERMANY");
		sb1.setEmpnum(55000);
		sb1.setFound(java.sql.Date.valueOf("1949-08-18"));

		sd.insert(sb1);
		assertEquals(1, sd.findAll().size()); // insert, size = 1

		sb1.setEmpnum(12000);
		sd.update(sb1);
		assertEquals(sb1.getEmpnum(), sd.findById(sb1.getId()).getEmpnum(), 1); // get from object = get from DB

		sd.delete(sb1.getId());
		assertEquals(0, sd.findAll().size()); // delete, size = 0
	}
}
