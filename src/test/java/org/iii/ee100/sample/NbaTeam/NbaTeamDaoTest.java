package org.iii.ee100.sample.NbaTeam;

import static org.junit.Assert.*;

import java.sql.SQLException;

import org.iii.ee100.sample.nbaTeam.NbaTeam;
import org.iii.ee100.sample.nbaTeam.NbaTeamDao;
import org.iii.ee100.sample.nbaTeam.NbaTeam;
import org.junit.Test;

public class NbaTeamDaoTest {

	@Test
	public void crud() {
		NbaTeamDao dao = new NbaTeamDao();
		try {
			dao.getConnection();
			
			//findAll
			dao.findAll();
			assertEquals(1, dao.findAll().size());
			
			
			
			// insert
			NbaTeam np1 = new NbaTeam();
			np1.setTeamName("Golden State Warriors");
			np1.setranking(1);
			np1.setwin(50);
			np1.setlose(12);
//			
			dao.insert(np1);
			assertEquals(1, dao.findAll().size());
			
//			update
			//np1.setId(23);
			np1.setTeamName("Golden State Warriors");
			np1.setranking(1);
			np1.setwin(50);
			np1.setlose(12);
			dao.update(np1);
			
			assertEquals(np1.getTeamName(),dao.findById(np1.getId()).getTeamName());
			
			//delete
			dao.delete(np1.getId());
			assertEquals(0, dao.findAll().size());

			//findAll
			dao.findAll();
			assertEquals(0, dao.findAll().size());

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
