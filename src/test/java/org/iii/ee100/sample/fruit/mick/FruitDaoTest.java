package org.iii.ee100.sample.fruit.mick;

import static org.junit.Assert.assertEquals;

import java.sql.SQLException;

import org.iii.ee100.sample.fruit.mick.Fruit;
import org.iii.ee100.sample.fruit.mick.FruitDao;
import org.junit.Test;

public class FruitDaoTest {
	
	@Test
	public void testCrud() {
		FruitDao dao = null;
		try {
			//test insert
			dao = new FruitDao();
			dao.getConnection();
			Fruit ft = new Fruit();
			assertEquals(0, dao.findAll().size());
			ft.setName("apple");
			ft.setColor("red");
			ft.setShape("circle");
			ft.setQuantity(25);
			ft.setOrigin("taiwan");
			dao.insert(ft);		
			assertEquals(1, dao.findAll().size());
			
			//test update
			ft.setName("banana");
			ft.setColor("yellow");
			ft.setShape("strip");
			ft.setQuantity(100);
			ft.setOrigin("japan");
			ft.setId(ft.getId());
			dao.update(ft);
			assertEquals(ft.getName(), dao.findById(ft.getId()).getName());
			assertEquals(ft.getColor(), dao.findById(ft.getId()).getColor());
			assertEquals(ft.getShape(), dao.findById(ft.getId()).getShape());
			assertEquals(ft.getQuantity(), dao.findById(ft.getId()).getQuantity());
			assertEquals(ft.getOrigin(), dao.findById(ft.getId()).getOrigin());
			
			//test delete
			dao.delete(ft.getId());
			assertEquals(0, dao.findAll().size());
			
			//test findAll
			assertEquals(0, dao.findAll().size());
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				dao.closeConn();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
