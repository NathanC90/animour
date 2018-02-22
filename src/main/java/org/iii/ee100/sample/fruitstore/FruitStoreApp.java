package org.iii.ee100.sample.fruitstore;

import java.util.List;
import java.util.Scanner;

public class FruitStoreApp {

	public static void main(String[] args) {
		long num = 0;
		FruitStoreDao dao = new FruitStoreDao();
		List<FruitStore> fruitStores = dao.findAll();

		for (FruitStore fruitStore : fruitStores) {
			System.out.print(fruitStore.getId() + "\t");
			System.out.print(fruitStore.getStoreName() + "\t");
			System.out.print(fruitStore.getAddress() + "\t");
			System.out.print(fruitStore.getPhoneNumber() + "\t");
			System.out.print((java.sql.Time)(fruitStore.getBusinessHours()) + "\t");

			System.out.println("\n");
		}

		Scanner scanner = new Scanner(System.in);

		while (true) {

			System.out.println("please choose your option:");
			num = scanner.nextLong();
			FruitStore fruitStore = dao.findById(num);

			if (fruitStore != null) {
				List<Fruit> fruits = fruitStore.getFruit_list();

				System.out.print(fruitStore.getId());
				System.out.print(fruitStore.getStoreName());
				System.out.print(fruitStore.getAddress());
				System.out.print(fruitStore.getPhoneNumber());
				System.out.print(fruitStore.getBusinessHours());

				System.out.println("-----------------------------");

				for (Fruit fruit : fruits) {
					System.out.println("fruit_id:" + fruit.getFruit_id());
					System.out.println("product_id:" + fruit.getProduct_id());
					System.out.println("fruitName:" + fruit.getFruitName());
					System.out.println("price:" + fruit.getPrice());
					System.out.println("psource:" + fruit.getPsource());
				}
			} else {
				System.err.println("this id" + num + "is not found");
			}
		}
	}
}
