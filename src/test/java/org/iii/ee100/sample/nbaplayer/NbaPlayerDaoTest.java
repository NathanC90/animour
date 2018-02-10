package org.iii.ee100.sample.nbaplayer;

import static org.junit.Assert.*;

import java.sql.SQLException;

import org.junit.Test;

public class NbaPlayerDaoTest {

	@Test
	public void crud() {
		NbaPlayerDao dao = new NbaPlayerDao();
		try {
			dao.getConnection();
			// insert
			NbaPlayer np1 = new NbaPlayer();
			np1.setName("STEPHEN-CURRY");
			np1.setThree_pointer_percentage(43);
			np1.setFg_percentage(91);
			np1.setApg(6);
			//dao.insert(np1);
			//assertEquals(10, dao.findAll().size());
			
			//update
			np1.setId(23);
			np1.setName("JAMES-HARDEN");
			np1.setThree_pointer_percentage(41);
			np1.setFg_percentage(89);
			np1.setApg(9);
			dao.update(np1);
			
			assertEquals(np1.getName(),dao.findById(np1.getId()).getName());
			
			//delete
			dao.delete(25);
			assertEquals(8, dao.findAll().size());

			//findAll
			dao.findAll();
			assertEquals(8, dao.findAll().size());

			//findById
			
			dao.findById(22);
			assertEquals(8, dao.findAll().size());

			
			
			
			

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
