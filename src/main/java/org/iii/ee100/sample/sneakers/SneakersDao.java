package org.iii.ee100.sample.sneakers;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

public class SneakersDao {
	private Connection conn;
	private PreparedStatement pstmt;
	
	
	private Connection getConnection() throws SQLException {
		String connUrl = "jdbc:postgresql://localhost:5432/testdb";
		String user = "postgres";
		String pswd = "postgres";
		
		HikariConfig config = new HikariConfig();
		config.setUsername(user);
		config.setPassword(pswd);
		config.addDataSourceProperty("cachePrepStmts", "true");
		config.addDataSourceProperty("prepStmtCacheSize", "250");
		config.addDataSourceProperty("prepStmtCacheSqlLimit", "2048");
		//Connection conn = DriverManager.getConnection(connUrl, "postgres", "postgres");
		
		HikariDataSource ds = new HikariDataSource(config);
		return ds.getConnection();
	}

	// insert 
	public void insert(Sneakers sn) {
		try {
			String insql = "INSERT INTO sneakers (name, color, brand, price, launch) VALUES (?, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(insql, Statement.RETURN_GENERATED_KEYS);

			pstmt.setString(1, sn.getName());
			pstmt.setString(2, sn.getColor());
			pstmt.setString(3, sn.getBrand());
			pstmt.setFloat(4, sn.getPrice());
			pstmt.setDate(5, sn.getLaunch());
			pstmt.executeUpdate();

			ResultSet rsKey= pstmt.getGeneratedKeys();
			if (rsKey.next()) {
				sn.setId(rsKey.getLong(1));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}
	} // end of insert

	// update 
	public void update(Sneakers sn) {
		try {
			String upsql = "UPDATE sneakers SET name = ?, color = ?, brand = ? , price = ?, launch = ? WHERE id = ?";
			pstmt = conn.prepareStatement(upsql);

			pstmt.setString(1, sn.getName());
			pstmt.setString(2, sn.getColor());
			pstmt.setString(3, sn.getBrand());
			pstmt.setFloat(4, sn.getPrice());
			pstmt.setDate(5, sn.getLaunch());
			pstmt.setLong(6, sn.getId());

			pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	} // end if update

	// delete
	public void delete(Long id) {
		try {
			String dlsql = "DELETE FROM sneakers WHERE id = ?";
			pstmt = conn.prepareStatement(dlsql);

			pstmt.setLong(1, id);
			pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	} // end of delete

	// select *
	public List<Sneakers> findAll() {
		Sneakers sn = null;
		List<Sneakers> snlist = new ArrayList<Sneakers>();
		ResultSet rs = null;

		try {
			String slsql = "SELECT id, name, color, brand, price, launch FROM sneakers ORDER BY id";
			pstmt = conn.prepareStatement(slsql);
			rs = pstmt.executeQuery();

			while (rs.next()) { 
				sn = new Sneakers(); 
				sn.setId(rs.getLong("id"));
				sn.setName(rs.getString("name"));
				sn.setColor(rs.getString("color"));
				sn.setBrand(rs.getString("brand"));
				sn.setPrice(rs.getFloat("price"));
				sn.setLaunch(rs.getDate("launch"));
				
				snlist.add(sn); 
			} // end of while

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return snlist;
	} // end of findall

	// select where id = ?
	public Sneakers findById(Long id) {

		Sneakers sn = null;
		ResultSet rs = null;

		try {
			String slidsql = "SELECT id, name, color, brand, price, launch FROM sneakers WHERE id = ?";
			pstmt = conn.prepareStatement(slidsql);
			pstmt.setLong(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				sn = new Sneakers();

				sn.setId(rs.getLong(1));
				sn.setName(rs.getString("name"));
				sn.setColor(rs.getString("color"));
				sn.setBrand(rs.getString("brand"));
				sn.setPrice(rs.getFloat("price"));
				sn.setLaunch(rs.getDate("launch"));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return sn;
	} // end of findbyid
}
