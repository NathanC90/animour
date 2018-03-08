package org.iii.ee100.sample.band;

import java.util.List;
import java.util.Scanner;

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

			if (band != null) {

				System.out.println(band.getId());
				System.out.println(band.getName());
				System.out.println(band.getMember());
				System.out.println();
				System.out.println("-----------------------------");

				for (Member member1 : member) {
					System.out.println("member_id:" + member1.getbandid());
					System.out.println("band_id:" + member1.getId());
					System.out.println("member's name:" + member1.getName());

				}
			} else {
				System.err.println("this id" + answer + "is not found");
			}

		}

	}


}
