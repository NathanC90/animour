package org.iii.ee100.sample.band;

import java.util.List;
import java.util.Scanner;

import org.iii.ee100.sample.drama.Actor;
import org.iii.ee100.sample.drama.Drama;

public class BandApp {

	public static void main(String[] args) {

		BandDao dao = new BandDao();
		List<Band> bands = dao.findAll();

		for (Band band : bands) {

			System.out.println(band.getId());
			System.out.println(band.getName());
			System.out.println(band.getMember());
			System.out.println();
			System.out.println("==========================");
			System.out.println();
		}

		Scanner sc = new Scanner(System.in);

		while (true) {

			System.out.println("Please chose your option : ");

			Long answer = (long) sc.nextInt();

			Band band = dao.findById(answer);
			List<Member> member = (List<Member>) dao.findById(answer);

			if (answer == 1) {

				System.out.println("Dname\t id\t character\t actor\t drama_id");

			} else if (answer == 2) {

				System.out.println("Dname\t id\t character\t actor\t drama_id");

			} else if (answer == 3) {

				System.out.println("Dname\t id\t character\t actor\t drama_id");

			} else {
				System.out.println("this id = " + answer + " is not found");
			}
		}

	}

}
