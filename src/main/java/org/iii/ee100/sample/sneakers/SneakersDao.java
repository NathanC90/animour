package org.iii.ee100.sample.sneakers;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class SneakersDao {
	Connection conn;
	PreparedStatement pstmt;

	// insert 
	public void insert(Sneakers sn) {
		try {
			String connUrl = "jdbc:postgresql://localhost:5432/testdb";
			conn = DriverManager.getConnection(connUrl, "postgres", "postgres");

			String insql = "INSERT INTO sneakers (name, color, brand, price, launch) VALUES (?, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(insql, Statement.RETURN_GENERATED_KEYS);

			// 用傳入的 sneakers 物件的 getter，取得物件 private 屬性，存入資料庫中。
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

	// update 傳入完成更新的 sneakers 物件，存入資料庫。
	public void update(Sneakers sn) {
		try {
			String connUrl = "jdbc:postgresql://localhost:5432/testdb";
			conn = DriverManager.getConnection(connUrl, "postgres", "postgres"); // 記得加帳號密碼

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

	public void delete(Long id) {
		try {
			String connUrl = "jdbc:postgresql://localhost:5432/testdb";
			conn = DriverManager.getConnection(connUrl, "postgres", "postgres");

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

	public List<Sneakers> findAll() {
		Sneakers sn = null;
		List<Sneakers> snlist = new ArrayList<Sneakers>();
		ResultSet rs = null;

		try {
			String connUrl = "jdbc:postgresql://localhost:5432/testdb";
			conn = DriverManager.getConnection(connUrl, "postgres", "postgres");

			//  select 欄位不用加 ()
			String slsql = "SELECT id, name, color, brand, price, launch FROM sneakers ORDER BY id";
			pstmt = conn.prepareStatement(slsql);
			rs = pstmt.executeQuery();

			while (rs.next()) { // 有資料的話
				sn = new Sneakers(); // 初始化一個 sneakers 物件
				// 用 rs.getter 取出從資料庫傳回的欄位資料
				// 用 sneakers 物件的setter 把從資料庫取回的的資料設定為物件屬性
				sn.setId(rs.getLong("id"));
				sn.setName(rs.getString("name"));
				sn.setColor(rs.getString("color"));
				sn.setBrand(rs.getString("brand"));
				sn.setPrice(rs.getFloat("price"));
				sn.setLaunch(rs.getDate("launch"));
				
				snlist.add(sn); // 設定完 sneakers 物件屬性後，加入arraylist 裡面
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

	public Sneakers findById(Long id) {

		Sneakers sn = null;
		ResultSet rs = null;

		try {
			String connUrl = "jdbc:postgresql://localhost:5432/testdb";
			conn = DriverManager.getConnection(connUrl, "postgres", "postgres");

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
