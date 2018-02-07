package org.iii.ee100.sample.fruit.mick;

import java.sql.SQLException;
import java.util.List;

public class FruitTest {

	public static void main(String[] args) {
		FruitDao dao = new FruitDao();
		try {
			//getConnection
			dao.getConnection();
			
			//insert
			Fruit ft = new Fruit();
			ft.setName("apple");
			ft.setColor("red");
			ft.setShape("circle");
			ft.setQuantity(25);
			ft.setOrigin("taiwan");
			dao.insert(ft);
			
			//update
			ft.setName("banana");
			ft.setColor("yellow");
			ft.setShape("strip");
			ft.setQuantity(100);
			ft.setOrigin("taiwan");
			ft.setId(12);
//			dao.update(ft);
			
			//delete
//			dao.delete(26);
			
			//findAll
			List<Fruit> fruits = dao.findAll();
			for(Fruit fruit: fruits) {
				System.out.print(fruit.getId() + " ");
				System.out.print(fruit.getName() + " ");
				System.out.print(fruit.getColor() + " ");
				System.out.print(fruit.getShape() + " ");
				System.out.print(fruit.getQuantity() + " ");
				System.out.println(fruit.getOrigin());
			}
			
			//findByPk
			ft = dao.findById(13);
			System.out.print(ft.getId() + " ");
			System.out.print(ft.getName() + " ");
			System.out.print(ft.getColor() + " ");
			System.out.print(ft.getShape() + " ");
			System.out.print(ft.getQuantity() + " ");
			System.out.println(ft.getOrigin());
			
					
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
