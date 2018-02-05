package game;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class GameDao {
	private static final String insertSTMT = "insert into game(name,publisher,platform,release_date) values (?, ?, ?, ?)";
	private static final String updateSTMT = "update game set name=?, publisher=?, platform=?, release_date=? where id=?";
	private static final String deleteSTMT = "delete from game where id=?";
	private static final String findAllSTMT = "select id,name,publisher,platform,release_date from game order by id";
	private static final String findByIdSTMT = "select id,name,publisher,platform,release_date from game where id=?";

	Connection conn = null;
	PreparedStatement pstmt = null;

	public void insert(Game game) {
		try {
			String connUrl = "jdbc:postgresql://localhost:5432/testdb";
			conn = DriverManager.getConnection(connUrl, "postgres", "postgres");
			PreparedStatement pstmt = conn.prepareStatement(insertSTMT);
			pstmt.setString(1, game.getName());
			pstmt.setString(2, game.getPublisher());
			pstmt.setString(3, game.getPlatform());
			pstmt.setDate(4, game.getRelease_date());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}
	}

	public void update(Game game) {
		try {
			String connUrl = "jdbc:postgresql://localhost:5432/testdb";
			conn = DriverManager.getConnection(connUrl, "postgres", "postgres");
			PreparedStatement pstmt = conn.prepareStatement(updateSTMT);
			pstmt.setString(1, game.getName());
			pstmt.setString(2, game.getPublisher());
			pstmt.setString(3, game.getPlatform());
			pstmt.setDate(4, game.getRelease_date());
			pstmt.setLong(5, game.getId());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}
	}

	public void delete(Long id) {
		try {
			String connUrl = "jdbc:postgresql://localhost:5432/testdb";
			conn = DriverManager.getConnection(connUrl, "postgres", "postgres");
			PreparedStatement pstmt = conn.prepareStatement(deleteSTMT);
			pstmt.setLong(1, id);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();

			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}
	}

	public ArrayList<Game> findAll() {
		ResultSet rs = null;
		Game game = null;
		ArrayList<Game> games = new ArrayList<Game>();
		try {
			String connUrl = "jdbc:postgresql://localhost:5432/testdb";
			conn = DriverManager.getConnection(connUrl, "postgres", "postgres");
			PreparedStatement pstmt = conn.prepareStatement(findAllSTMT);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				game = new Game();
				game.setId(rs.getLong("id"));
				game.setName(rs.getString("name"));
				game.setPublisher(rs.getString("publisher"));
				game.setPlatform(rs.getString("platform"));
				game.setRelease_date(rs.getDate("release_date"));
				games.add(game);
			}
		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}
		return games;
	}

	public Game findById(Long id) {
		Game game = null;
		ResultSet rs = null;
		try {
			String connUrl = "jdbc:postgresql://localhost:5432/testdb";
			conn = DriverManager.getConnection(connUrl, "postgres", "postgres");
			PreparedStatement pstmt = conn.prepareStatement(findByIdSTMT);
			pstmt.setLong(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				game = new Game();
				game.setId(rs.getLong("id"));
				game.setName(rs.getString("name"));
				game.setPublisher(rs.getString("publisher"));
				game.setPlatform(rs.getString("platform"));
				game.setRelease_date(rs.getDate("release_date"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}
		return game;
	}
}
