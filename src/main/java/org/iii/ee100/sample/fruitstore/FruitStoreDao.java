package org.iii.ee100.sample.fruitstore;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.iii.ee100.sample.game.Character;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

public class FruitStoreDao {
	public static final String INSERT_STMT = 
			"INSERT INTO fruitStore (storeName, address, phoneNumber, businessHours) VALUES (?, ?, ?, ?)";
	public static final String UPDATE_STMT =
			"UPDATE fruitStore SET storeName = ?, address = ?, phoneNumber = ?, businessHours = ? WHERE id = ?";
	public static final String DELETE_STMT = 
			"DELETE FROM fruitStore WHERE id = ?";
	public static final String FINDALL_STMT = 
			"SELECT id, storeName, address, phoneNumber, businessHours FROM fruitStore ORDER BY id";
	public static final String FINDBYPK_STMT = 
			"SELECT id, storeName, address, phoneNumber, businessHours FROM fruitStore WHERE id = ?";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	HikariDataSource ds = null;
	
	private HikariDataSource getConnection() throws SQLException {
		String connUrl = "jdbc:postgresql://localhost:5432/testdb";
		String user = "postgres";
		String password = "postgres";

		HikariConfig config = new HikariConfig();
		config.setJdbcUrl(connUrl);
		config.setUsername(user);
		config.setPassword(password);
		config.addDataSourceProperty("cachePrepStmts", "true");
		config.addDataSourceProperty("prepStmtCacheSize", "250");
		config.addDataSourceProperty("prepStmtCacheSqlLimit", "2048");

		ds = new HikariDataSource(config);

		return ds;
	}

	public void insert(FruitStore fruitStore){
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(INSERT_STMT, Statement.RETURN_GENERATED_KEYS);
			pstmt.setString(1, fruitStore.getStoreName());
			pstmt.setString(2, fruitStore.getAddress());
			pstmt.setString(3, fruitStore.getPhoneNumber());
			pstmt.setTime(4, fruitStore.getBusinessHours());
			pstmt.executeUpdate();
			ResultSet rs = pstmt.getGeneratedKeys();
			if (rs.next()) {
				fruitStore.setId(rs.getLong(1));
			} 
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (pstmt != null) {
					pstmt.close();
				}
				if (conn != null) {
					conn.close();
				} 
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	public void update(FruitStore fruitStore) {
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(UPDATE_STMT);
			pstmt.setString(1, fruitStore.getStoreName());
			pstmt.setString(2, fruitStore.getAddress());
			pstmt.setString(3, fruitStore.getPhoneNumber());
			pstmt.setTime(4, fruitStore.getBusinessHours());
			pstmt.setLong(5, fruitStore.getId());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (pstmt != null) {
					pstmt.close();
				}
				if (conn != null) {
					conn.close();
				} 
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	public void delete(Long id) {
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(DELETE_STMT);
			pstmt.setLong(1, id);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (pstmt != null) {
					pstmt.close();
				}
				if (conn != null) {
					conn.close();
				} 
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	public List<FruitStore> findAll() {
		FruitStore fruitStore = null;
		List<FruitStore> fruitStores = new ArrayList<FruitStore>();
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(FINDALL_STMT);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				fruitStore = new FruitStore();
				fruitStore.setId(rs.getLong("id"));
				fruitStore.setStoreName(rs.getString("storeName"));
				fruitStore.setAddress(rs.getString("address"));
				fruitStore.setPhoneNumber(rs.getString("phoneNumber"));
//				fruitStore.setBusinessHours(rs.getTime("businessHours"));
				fruitStore.setBusinessHours(rs.getTime(5));
				fruitStores.add(fruitStore);
			} 
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (pstmt != null) {
					pstmt.close();
				}
				if (conn != null) {
					conn.close();
				} 
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return fruitStores;
	}

	public FruitStore findById(Long id) {		
		FruitStore fruitStore = null;
		List<Fruit> fruits = new ArrayList<Fruit>();
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(FINDBYPK_STMT);
			pstmt.setLong(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				fruitStore = new FruitStore();
				fruitStore.setId(rs.getInt("id"));
				fruitStore.setStoreName(rs.getString("storeName"));
				fruitStore.setAddress(rs.getString("address"));
				fruitStore.setPhoneNumber(rs.getString("phoneNumber"));
				fruitStore.setBusinessHours(rs.getTime("businessHours"));
				fruits = this.findByFruitId(rs.getLong("id"));
				fruitStore.setFruit_list(fruits);
			} 
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (pstmt != null) {
					pstmt.close();
				}
				if (conn != null) {
					conn.close();
				} 
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return fruitStore;
	}
	
	public static final String FINDBYFRUITID_STMT = 
			"SELECT fruit_id, product_id, fruitName, price, psource FROM fruit WHERE product_id = ?";
	public List<Fruit> findByFruitId(Long product_id) {
		Fruit fruit = null;
		List<Fruit> fruits = new ArrayList<Fruit>();
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(FINDBYFRUITID_STMT);
			pstmt.setLong(1, product_id);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				fruit = new Fruit();
				fruit.setFruit_id(rs.getLong("fruit_id"));
				fruit.setProduct_id(rs.getLong("product_id"));
				fruit.setFruitName(rs.getString("fruitName"));
				fruit.setPrice(rs.getInt("price"));
				fruit.setPsource(rs.getString("psource"));
				fruits.add(fruit);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (pstmt != null) {
					pstmt.close();
				}
				if (conn != null) {
					conn.close();
				} 
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return fruits;
		
	}
}
