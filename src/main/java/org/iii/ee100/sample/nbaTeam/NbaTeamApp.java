package org.iii.ee100.sample.nbaTeam;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import javax.swing.ListCellRenderer;

import org.iii.ee100.sample.shoebrand.Shoe;
import org.iii.ee100.sample.shoebrand.Shoebrand;
import org.iii.ee100.sample.shoebrand.ShoebrandDao;

public class NbaTeamApp {

	public static void main(String[] args) throws SQLException {
		long f1;
		NbaTeamDao dao= new NbaTeamDao();
		List<NbaTeam> sbs = dao.findAll();

		for (NbaTeam sb : sbs) {
			System.out.printf("%-5s\t", sb.getId());
			System.out.printf("%-20s\t", sb.getTeamName());
			System.out.printf("%-20s\t", sb.getRanking());
			System.out.printf("%-20s\t", sb.getWin());
			System.out.printf("%-8s\t", sb.getLose());
			System.out.println("");
			System.out.println("============================================");
		}

		// while (true) {
		Scanner sc = new Scanner(System.in);
		System.out.println("please choose your team id：");
		f1 = sc.nextLong();
		NbaTeam sb = dao.findById(f1);
		
		if (sb != null) {
			System.out.printf("%-5s\t", sb.getId());
			System.out.printf("%-20s\t", sb.getTeamName());
			System.out.printf("%-20s\t", sb.getRanking());
			System.out.printf("%-20s\t", sb.getWin());
			System.out.printf("%-8s\t", sb.getLose());
			System.out.println("");
			System.out.println("============================================");

			for (NbaPlayer player : sb.getList()) {
				System.out.printf("%-5s\t", player.getId());
				System.out.printf("%-20s\t", player.getName());
				System.out.printf("%-20s\t", player.getThree_pointer_percentage());
				System.out.printf("%-8d\t", player.getFg_percentage());
				System.out.printf("%-20s\t", player.getApg());
				System.out.println("");
				System.out.println("============================================");
			}
		} else {
			System.err.println("this id = " + f1 + " is not found");
		}
	//} end of while
	}
}
		
		
		
		
		
		
		
		
		
