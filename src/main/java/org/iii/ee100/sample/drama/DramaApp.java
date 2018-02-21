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
			List<Actor> actorls= dao.findActorById(num1);
			if (drama != null) {
				if (actorls.size() !=0) {
				for (Actor actor : actorls) {
					System.out.println("Dname\t id\t character\t actor\t drama_id");
					System.out.print(actor.getDname() + ", ");
					System.out.print(actor.getId() + ", ");
					System.out.print(actor.getA_character() + ", ");
					System.out.print(actor.getActor() + ", ");
					System.out.print(actor.getD_id() + "\n");
				}
				System.out.println("==============================");
				}
				else {
					System.err.println("this id = "+num1+" has no actor data ");
				}
			} else {
				System.err.println("this id = "+num1+" is not found");
			}
		}
	}

}
