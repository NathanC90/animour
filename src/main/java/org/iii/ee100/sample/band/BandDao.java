package org.iii.ee100.sample.band;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.iii.ee100.sample.shoebrand.Shoe;

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
			PreparedStatement pstmt = getConnection().prepareStatement(insertSTMT);
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
			PreparedStatement pstmt = getConnection().prepareStatement(updateSTMT);
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
			PreparedStatement pstmt = getConnection().prepareStatement(deleteSTMT);
			pstmt.setLong(1, id);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null) {
					pstmt.close();
				}
				if (conn != null) {
					conn.close();
				}

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
			PreparedStatement pstmt = getConnection().prepareStatement(findAllSTMT);
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
			PreparedStatement pstmt = getConnection().prepareStatement(findByIdSTMT);
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

	private Member findAllMember(int id) {
		ResultSet rs = null;
		ArrayList<Member> members = new ArrayList<Member>();
		Member member = null;

		try {
			conn = getConnection();
			String findshoessql = "SELECT id, name, color, price, launch FROM shoe WHERE brand_id = ?";
			pstmt = conn.prepareStatement(findshoessql);

			pstmt.setInt(1, id);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				member = new Member();
				member.setId(rs.getLong("id"));
				member.setName(rs.getString("name"));
				member.setbandid(rs.getLong("bandid"));
				members.add(member);

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
		return member;
	}

}
