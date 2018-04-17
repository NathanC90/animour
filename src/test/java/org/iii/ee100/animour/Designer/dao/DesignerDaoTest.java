package org.iii.ee100.animour.Designer.dao;


import java.sql.Timestamp;


import org.iii.ee100.animour.salon.dao.DesignerDao;
import org.iii.ee100.animour.salon.entity.Designer;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class DesignerDaoTest {

	@Autowired
	private DesignerDao designerDao;

	@Test
	public void TestInsertDesigner() {
		Designer designer = new Designer();
		designer.setDesigner("小美");
		designer.setFreeTime(Timestamp.valueOf("2018-06-01 09:00:00"));
		designer.setOneFree(1);
		designerDao.save(designer);
		
		Designer designer2 = new Designer();
		designer2.setDesigner("阿明");
		designer2.setFreeTime(Timestamp.valueOf("2018-06-01 10:00:00"));
		designer2.setOneFree(1);
		designerDao.save(designer2);

		Designer designer3 = new Designer();
		designer3.setDesigner("志偉");
		designer3.setFreeTime(Timestamp.valueOf("2018-06-01 11:00:00"));
		designer3.setOneFree(1);
		designerDao.save(designer3);
		
		Designer designer4 = new Designer();
		designer4.setDesigner("阿湯");
		designer4.setFreeTime(Timestamp.valueOf("2018-06-01 12:00:00"));		
		designer4.setOneFree(1);
		designerDao.save(designer4);
		
		Designer designer5 = new Designer();
		designer5.setDesigner("阿生");
		designer5.setFreeTime(Timestamp.valueOf("2018-06-01 02:00:00"));
		designer5.setOneFree(1);
		designerDao.save(designer5);
		
		Designer designer6 = new Designer();
		designer6.setDesigner("阿佑");
		designer6.setFreeTime(Timestamp.valueOf("2018-06-01 03:00:00"));
		designer6.setOneFree(1);
		designerDao.save(designer6);

	}
	
//	@Test
//	public void TestUpdate() {
//		
//		Designer designer = designerDao.findOne(5L);
//		designer.setOneFree(0);
//		designerDao.save(designer);
//	}
	
	
	@Test
	public void TestfindAll() {
		System.out.println(designerDao.findAll());
	}

}
