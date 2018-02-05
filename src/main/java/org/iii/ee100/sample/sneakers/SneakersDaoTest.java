package org.iii.ee100.sample.sneakers;

import static org.junit.Assert.*;

import org.junit.Test;

public class SneakersDaoTest {
	
	@Test
	public void crudTest() {
		
		SneakersDao sd = new SneakersDao();

		assertEquals(0, sd.findAll().size());  // 初始 size = 0

		Sneakers sn1 = new Sneakers();
		sn1.setName("yeezyboos350");
		sn1.setColor("BLUETINT");
		sn1.setBrand("ADIDAS");
		sn1.setPrice(8600);
		sn1.setLaunch(java.sql.Date.valueOf("2017-12-16"));

		sd.insert(sn1);
		assertEquals(1, sd.findAll().size()); // insert 一筆 sn 物件，size = 1
		
		// update 一個 sn 物件
		sn1.setPrice(12000);
		sd.update(sn1);
		assertEquals(sn1.getPrice(), sd.findById(sn1.getId()).getPrice(), 1); // 直接 get sn 更新欄位的值 = find
	
		sd.delete(sn1.getId());
		assertEquals(0, sd.findAll().size()); // delete 特定id 的一筆 sn 物件，size = 0
		
		
		
		
		
		
		
	}
	
	

}
