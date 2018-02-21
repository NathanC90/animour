package org.iii.ee100.sample.shoebrand;

import java.sql.SQLException;
import java.util.*;

import org.iii.ee100.sample.drama.Drama;

public class ShoebrandApp {

	public static void main(String[] args) throws SQLException {

		long num1;
		ShoebrandDao dao = new ShoebrandDao();
		List<Shoebrand> sbs = dao.findAll();

		for (Shoebrand sb : sbs) {
			System.out.printf("%-5s\t", sb.getId());
			System.out.printf("%-20s\t", sb.getName());
			System.out.printf("%-20s\t", sb.getStyle());
			System.out.printf("%-20s\t", sb.getHeadq());
			System.out.printf("%-8s\t", sb.getEmpnum());
			System.out.printf("%-20s\t", sb.getFound());
			System.out.println("");
			System.out.println("============================================");
		}

		// while (true) {
		Scanner sc = new Scanner(System.in);
		System.out.println("please choose your brand id：");
		num1 = sc.nextLong();
		Shoebrand sb = dao.findById(num1);
		
		if (sb != null) {
			System.out.printf("%-5s\t", sb.getId());
			System.out.printf("%-20s\t", sb.getName());
			System.out.printf("%-20s\t", sb.getStyle());
			System.out.printf("%-20s\t", sb.getHeadq());
			System.out.printf("%-8s\t", sb.getEmpnum());
			System.out.printf("%-20s\t", sb.getFound());
			System.out.println("");
			System.out.println("============================================");

			for (Shoe shoe : sb.getList()) {
				System.out.printf("%-5s\t", shoe.getId());
				System.out.printf("%-20s\t", shoe.getName());
				System.out.printf("%-20s\t", shoe.getColor());
				System.out.printf("%-8d\t", shoe.getPrice());
				System.out.printf("%-20s\t", shoe.getLaunch());
				System.out.println("");
				System.out.println("============================================");
			}
		} else {
			System.err.println("this id = " + num1 + " is not found");
		}
	//} end of while
	}
}
