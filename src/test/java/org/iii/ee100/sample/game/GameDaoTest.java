package org.iii.ee100.sample.game;

import static org.junit.Assert.*;

import org.iii.ee100.sample.game.Game;
import org.iii.ee100.sample.game.GameDao;
import org.junit.Test;


public class GameDaoTest {

	@Test
	public void crudTest() {
		GameDao gd = new GameDao();
		//test findAll()
		assertEquals(0, gd.findAll().size());
		
		//test insert()
		Game game1 = new Game();
		game1.setName("Mario_Kart8");
		game1.setPublisher("Nintendo");
		game1.setPlatform("Nintendo_Switch"); 
		game1.setRelease_date(java.sql.Date.valueOf("2017-04-28"));
		gd.insert(game1);
		assertEquals(1, gd.findAll().size());
		
		//test update()
		game1.setName("Mario_Kart8_Deluxe");
		gd.update(game1);
		assertEquals(game1.getName(), gd.findById(game1.getId()).getName());
	
		//test delete()
		gd.delete(game1.getId());
		assertEquals(0, gd.findAll().size());
		
	}

}