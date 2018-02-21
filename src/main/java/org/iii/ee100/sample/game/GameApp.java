package org.iii.ee100.sample.game;

import java.util.List;
import java.util.Scanner;

public class GameApp {

	public static void main(String[] args) {
		long num1 = 0;
		GameDao dao = new GameDao();
		List<Game> games = dao.findAll();

		for (Game game : games) {
			System.out.print(game.getId() + "\t");
			System.out.print(game.getName() + "\t");
			System.out.print(game.getPublisher() + "\t");
			System.out.print(game.getPlatform() + "\t");
			System.out.print(game.getRelease_date() + "\t");

			System.out.println("\n");
		}

		Scanner sc = new Scanner(System.in);

		while (true) {

			System.out.println("please choose your option:");
			num1 = sc.nextLong();
			Game game = dao.findById(num1);

			if (game != null) {
				List<Character> characters = game.getCharacter_list();

				System.out.print(game.getId());
				System.out.print(game.getName());
				System.out.print(game.getPublisher());
				System.out.print(game.getPlatform());
				System.out.print(game.getRelease_date());

				System.out.println("\n");
				System.out.println("=============================");

				for (Character character : characters) {
					System.out.println("c_id:" + character.getC_id());
					System.out.println("game_id:" + character.getGame_id());
					System.out.println("c_name:" + character.getC_name());
					System.out.println("");
				}

			} else {
				System.err.println("this id" + num1 + "is not found");
			}
		}

	}

}
