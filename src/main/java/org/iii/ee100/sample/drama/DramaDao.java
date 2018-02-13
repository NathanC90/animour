package org.iii.ee100.sample.drama;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class DramaDao {
	// 新
	private static final String INSERT_STMT = "INSERT INTO drama ( dname, noofseasons, noofepisodes, year, country) VALUES ( ?, ?, ?, ?, ?)";
	// 改
	private static final String UPDATE_STMT = "UPDATE drama SET dname=?, noofseasons=?, noofepisodes=?, year=?, country=? WHERE id=?";
	// 刪
	private static final String DELETE_STMT = "DELETE FROM drama WHERE id=?";
	// 一筆;
	private static final String FIND_ONE_STMT = "SELECT id, dname, noofseasons, noofepisodes, year, country FROM drama WHERE id=?";
	// 全部
	private static final String FIND_ALL_STMT = "SELECT id, dname, noofseasons, noofepisodes, year, country FROM drama ORDER BY id";

	private Connection conn;
	private PreparedStatement pstmt;

	private Connection getConnection() throws SQLException {
		String connUrl = "jdbc:postgresql://localhost:5432/testdb";
		String user = "postgres";
		String password = "postgres";

		Connection conn = DriverManager.getConnection(connUrl, user, password);

		return conn;
	}

	public List<Drama> findAll() {

		Drama drama = null;
		List<Drama> dramals = new ArrayList<Drama>();
		ResultSet rs = null;

		try {
			pstmt = getConnection().prepareStatement(FIND_ALL_STMT);// 透過PreparedStatement執行sql指令
			rs = pstmt.executeQuery();
			while (rs.next()) {
				drama = new Drama();
				drama.setId(rs.getLong("id"));
				drama.setDname(rs.getString("dname"));
				drama.setSeason(rs.getInt("noofseasons"));
				drama.setEpisode(rs.getInt("noofepisodes"));
				drama.setYear(rs.getInt("year"));
				drama.setCountry(rs.getString("country"));
				dramals.add(drama);// 加進arraylist
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();

				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();

			} catch (SQLException e) {
				e.printStackTrace();
			}

		}

		return dramals;// return List<Drama> object
	}

	public Drama findById(long id) {

		Drama drama = null;
		ResultSet rs = null;
		try {

			PreparedStatement pstmt = getConnection().prepareStatement(FIND_ONE_STMT);// 透過PreparedStatement執行sql指令
			pstmt.setLong(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				drama = new Drama();
				drama.setId(rs.getLong("id"));
				drama.setDname(rs.getString("dname"));
				drama.setSeason(rs.getInt("noofseasons"));
				drama.setEpisode(rs.getInt("noofepisodes"));
				drama.setYear(rs.getInt("year"));
				drama.setCountry(rs.getString("country"));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}

		}

		return drama;// object
	}

	public void insert(Drama drama) {

		try {
			PreparedStatement pstmt = getConnection().prepareStatement(INSERT_STMT, Statement.RETURN_GENERATED_KEYS);
			pstmt.setString(1, drama.getDname());
			pstmt.setInt(2, drama.getSeason());
			pstmt.setInt(3, drama.getEpisode());
			pstmt.setInt(4, drama.getYear());
			pstmt.setString(5, drama.getCountry());
			pstmt.executeUpdate();

			ResultSet rs = pstmt.getGeneratedKeys();
			if (rs.next()) {
				drama.setId(rs.getLong(1));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}

		}
	}

	public void update(Drama drama) {

		try {

			PreparedStatement pstmt = getConnection().prepareStatement(UPDATE_STMT);
			pstmt.setString(1, drama.getDname());
			pstmt.setInt(2, drama.getSeason());
			pstmt.setInt(3, drama.getEpisode());
			pstmt.setInt(4, drama.getYear());
			pstmt.setString(5, drama.getCountry());
			pstmt.setLong(6, drama.getId());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}

		}
	}

	public void delete(Long id) {

		try {

			PreparedStatement pstmt = getConnection().prepareStatement(DELETE_STMT);
			pstmt.setLong(1, id);
			pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}

		}
	}

}
