package org.iii.ee100.animour.shopping.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.iii.ee100.animour.shopping.entity.Product;
import org.springframework.stereotype.Repository;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

@Repository
public class ProductDao {
	
	private static final String INSERT_STMT = "INSERT INTO products (name, price, quantity, make, expire) VALUES (?, ?, ?, ?, ?)";
	private static final String UPDATE_STMT = "UPDATE products SET name = ?, price = ?, quantity = ?, make = ? , expire = ? WHERE id = ?";
	private static final String DELETE_STMT = "DELETE FROM products WHERE id = ?";
	private static final String FINDALL_STMT = "SELECT id, name, price, quantity, make, expire FROM products order by id desc fetch first 6 rows only";
	private static final String FINDBYPK_STMT = "SELECT id, name, price, quantity, make, expire FROM products WHERE id = ?";
	HikariDataSource ds = this.getConnection();
	
	private HikariDataSource getConnection() {
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

		HikariDataSource ds = new HikariDataSource(config);
		return ds;
	}
	
	//Insert Product
	public void insert(Product product){
		ResultSet rs = null;
		try(Connection conn = ds.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(INSERT_STMT, Statement.RETURN_GENERATED_KEYS);) {
			pstmt.setString(1, product.getName());
			pstmt.setDouble(2, product.getPrice());
			pstmt.setLong(3, product.getQuantity());
			pstmt.setTimestamp(4, product.getMake());
			pstmt.setInt(5, product.getExpire());
			pstmt.executeUpdate();
			rs = pstmt.getGeneratedKeys();
			if (rs.next()) {
				product.setId(rs.getLong(1));
			} 
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}
	
	//Update Product
	public void update(Product product) {
		ResultSet rs = null;
		try(Connection conn = ds.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(UPDATE_STMT);) {
			pstmt.setString(1, product.getName());
			pstmt.setDouble(2, product.getPrice());
			pstmt.setLong(3, product.getQuantity());
			pstmt.setTimestamp(4, product.getMake());
			pstmt.setInt(5, product.getExpire());
			pstmt.setLong(6, product.getId());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}
	
	//Delete Product
	public void delete(Long id) {
		ResultSet rs = null;
		try(Connection conn = ds.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(DELETE_STMT);) {
			pstmt.setLong(1, id);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}
	
	//FindAll Product
	public List<Product> findAll() {
		ResultSet rs = null;
		Product products = null;
		List<Product> productList = new ArrayList<Product>();
		try(Connection conn = ds.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(FINDALL_STMT);) {
			
			rs = pstmt.executeQuery();
			while (rs.next()) {
				products = new Product();
				products.setId(rs.getLong("id"));
				products.setName(rs.getString("name"));
				products.setPrice(rs.getDouble("price"));
				products.setQuantity(rs.getLong("quantity"));
				products.setMake(rs.getTimestamp("make"));
				products.setExpire(rs.getInt("expire"));
				productList.add(products);
			} 
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return productList;
	}
	
	//FindById Product
	public Product findById(Long id) {		
		Product products = null;
		ResultSet rs = null;
		try(Connection conn = ds.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(FINDBYPK_STMT);) {
			pstmt.setLong(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				products = new Product();
				products.setId(rs.getLong("id"));
				products.setName(rs.getString("name"));
				products.setPrice(rs.getDouble("price"));
				products.setQuantity(rs.getLong("quantity"));
				products.setMake(rs.getTimestamp("make"));
				products.setExpire(rs.getInt("expire"));
			} 
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return products;
	}
}
