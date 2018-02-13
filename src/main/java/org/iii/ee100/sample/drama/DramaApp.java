package org.iii.ee100.sample.drama;

import java.util.List;
import java.util.Scanner;

public class DramaApp {

	public static void main(String[] args) {
		int num1;
		DramaDao dao = new DramaDao();
		List<Drama> dramas = dao.findAll();

		
		System.out.println("ID\tDrama Name\tYear\tSeason\t");
		for (Drama drama : dramas) {

			System.out.print(drama.getId() + "\t");
			System.out.print(drama.getDname() + "\t");
			System.out.print(drama.getYear() + "\t");
			System.out.print(drama.getSeason() + "\t");

			System.out.println("\n");
		}

		Scanner scann = new Scanner(System.in);

		while (true) {

			System.out.println("please choose your option：");
			num1 = scann.nextInt();

			Drama drama = dao.findById(num1);

			if (drama != null) {
				System.out.println(drama.getDname());
				System.out.println(drama.getCountry());
				System.out.println(drama.getYear());
				System.out.println(drama.getSeason());
				System.out.println(drama.getEpisode());
				System.out.println("==============================");
			} else {
				System.err.println("this id = "+num1+" is not found");
			}
		}
	}

}
