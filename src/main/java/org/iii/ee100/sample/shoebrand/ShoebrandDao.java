package org.iii.ee100.sample.shoebrand;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

public class ShoebrandDao {

	private static final String insql = "INSERT INTO shoebrand (name, style, headq, empnum, found) VALUES (?, ?, ?, ?, ?)";
	private static final String upsql = "UPDATE shoebrand SET name = ?, style = ?, headq = ? , empnum = ?, found = ? WHERE id = ?";
	private static final String dlsql = "DELETE FROM shoebrand WHERE id = ?";
	private static final String slsql = "SELECT id, name, style, headq, empnum, found FROM shoebrand ORDER BY id";
	private static final String slidsql = "SELECT id, name, style, headq, empnum, found FROM shoebrand WHERE id = ?";

	private Connection getConnection() throws SQLException {
		String connUrl = "jdbc:postgresql://localhost:5432/testdb";
		String user = "postgres";
		String pswd = "postgres";

		HikariConfig config = new HikariConfig();
		config.setJdbcUrl(connUrl);
		config.setUsername(user);
		config.setPassword(pswd);
		config.addDataSourceProperty("cachePrepStmts", "true");
		config.addDataSourceProperty("prepStmtCacheSize", "250");
		config.addDataSourceProperty("prepStmtCacheSqlLimit", "2048");

		HikariDataSource ds = new HikariDataSource(config);
		return ds.getConnection();
	}

	public void closeAll(ResultSet rs, PreparedStatement pstmt, Connection conn) {
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (pstmt != null) {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	// insert
	public void insert(Shoebrand sb) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(insql, Statement.RETURN_GENERATED_KEYS);

			pstmt.setString(1, sb.getName());
			pstmt.setString(2, sb.getStyle());
			pstmt.setString(3, sb.getHeadq());
			pstmt.setInt(4, sb.getEmpnum());
			pstmt.setDate(5, sb.getFound());
			pstmt.executeUpdate();

			ResultSet rsKey = pstmt.getGeneratedKeys();
			if (rsKey.next()) {
				sb.setId(rsKey.getLong(1));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeAll(rs, pstmt, conn);
		}
	} // end of insert

	// update
	public void update(Shoebrand sb) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(upsql);

			pstmt.setString(1, sb.getName());
			pstmt.setString(2, sb.getStyle());
			pstmt.setString(3, sb.getHeadq());
			pstmt.setInt(4, sb.getEmpnum());
			pstmt.setDate(5, sb.getFound());
			pstmt.setLong(6, sb.getId());

			pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeAll(rs, pstmt, conn);
		}
	} // end if update

	// delete
	public void delete(Long id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(dlsql);

			pstmt.setLong(1, id);
			pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeAll(rs, pstmt, conn);
		}
	} // end of delete

	// select *
	public List<Shoebrand> findAll() {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Shoebrand sb = null;
		List<Shoebrand> sblist = new ArrayList<Shoebrand>();
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(slsql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				sb = new Shoebrand();
				sb.setId(rs.getLong("id"));
				sb.setName(rs.getString("name"));
				sb.setStyle(rs.getString("style"));
				sb.setHeadq(rs.getString("headq"));
				sb.setEmpnum(rs.getInt("empnum"));
				sb.setFound(rs.getDate("found"));

				sblist.add(sb);
			} 
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeAll(rs, pstmt, conn);
		}
		return sblist;
	} // end of findall

	private List<Shoe> findAllShoes(int id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Shoe> shoes = new ArrayList<Shoe>();
		Shoe shoe = null;

		try {
			conn = getConnection();
			String findshoessql = "SELECT id, name, color, price, launch FROM shoe WHERE brand_id = ?";
			pstmt = conn.prepareStatement(findshoessql);

			pstmt.setInt(1, id);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				shoe = new Shoe();
				shoe.setId(rs.getInt("id"));
				shoe.setName(rs.getString("name"));
				shoe.setColor(rs.getString("color"));
				shoe.setPrice(rs.getInt("price"));
				shoe.setLaunch(rs.getDate("launch"));
				shoes.add(shoe);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeAll(rs, pstmt, conn);
		}
		return shoes;
	}

	// select where id = ?
	public Shoebrand findById(long id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Shoebrand sb = null;

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(slidsql);
			pstmt.setLong(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				sb = new Shoebrand();

				sb.setId(rs.getLong("id"));
				sb.setName(rs.getString("name"));
				sb.setStyle(rs.getString("style"));
				sb.setHeadq(rs.getString("headq"));
				sb.setEmpnum(rs.getInt("empnum"));
				sb.setFound(rs.getDate("found"));
				sb.setList(findAllShoes((int) id));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeAll(rs, pstmt, conn);
		}
		return sb;
	} // end of findbyid
}
