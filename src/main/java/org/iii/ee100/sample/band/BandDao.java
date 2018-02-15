package org.iii.ee100.sample.band;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

public class BandDao {
	private static final String insertSTMT = "insert into band(name,member) values (?, ?)";
	private static final String updateSTMT = "update game set name=?, member=?";
	private static final String deleteSTMT = "delete from band where id=?";
	private static final String findAllSTMT = "select id,name,member, from band order by id";
	private static final String findByIdSTMT = "select id,name,member, from band where id=?";

	private Connection conn = null;
	private PreparedStatement pstmt = null;

	private Connection getConnection() throws SQLException {
		String connUrl = "jdbc:postgresql://localhost:5432/testdb";
		String user = "postgres";
		String password = "postgress";

		// Connection conn = DriverManager.getConnection(connUrl, user, password);

		HikariConfig config = new HikariConfig();
		config.setJdbcUrl(connUrl);
		config.setUsername(user);
		config.setPassword(password);
		config.addDataSourceProperty("cachePrepStmts", "true");
		config.addDataSourceProperty("prepStmtCacheSize", "250");
		config.addDataSourceProperty("prepStmtCacheSqlLimit", "2048");

		HikariDataSource ds = new HikariDataSource(config);

		return ds.getConnection();

	}

	public void insert(Band band) {
		try {
			pstmt.setString(1, band.getName());
			pstmt.setInt(2, band.getMember());
			pstmt.executeUpdate();
			ResultSet rs = pstmt.getGeneratedKeys();
			if (rs.next()) {
				band.setId(rs.getLong(1));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null) {
					pstmt.close();
				}
				conn.close();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}
	}

	public void update(Band band) {
		try {
			pstmt.setString(1, band.getName());
			pstmt.setInt(2, band.getMember());
			pstmt.setLong(3, band.getId());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null) {
					pstmt.close();
				}
				conn.close();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}
	}

	public void delete(Long id) {
		try {

			pstmt.setLong(1, id);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null) {
					pstmt.close();
				}
				conn.close();

			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}
	}

	public ArrayList<Band> findAll() {
		ResultSet rs = null;
		Band band;
		ArrayList<Band> bands = new ArrayList<Band>();
		try {

			rs = pstmt.executeQuery();
			while (rs.next()) {
				band = new Band();
				band.setId(rs.getLong("id"));
				band.setName(rs.getString("name"));
				band.setMember(rs.getInt("member"));
				bands.add(band);
			}
		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			try {
				rs.close();
				if (pstmt != null) {
					pstmt.close();
				}
				conn.close();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}
		return bands;
	}

	public Band findById(Long id) {
		Band band = new Band();
		ResultSet rs = null;
		try {
			pstmt.setLong(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				band = new Band();
				band.setId(rs.getLong("id"));
				band.setName(rs.getString("name"));
				band.setMember(rs.getInt("member"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				if (pstmt != null) {
					pstmt.close();
				}
				conn.close();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}
		return band;
	}

}
