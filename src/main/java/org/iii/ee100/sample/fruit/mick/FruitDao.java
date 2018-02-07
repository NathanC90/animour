package org.iii.ee100.sample.fruit.mick;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class FruitDao implements IFruitDao {
	public static final String INSERT_STMT = 
			"INSERT INTO fruit (name, color, shape, quantity, origin) VALUES (?, ?, ?, ?, ?)";
	public static final String UPDATE_STMT =
			"UPDATE fruit SET name = ?, color = ?, shape = ?, quantity = ?, origin = ? WHERE id = ?";
	public static final String DELETE_STMT = 
			"DELETE FROM fruit WHERE id = ?";
	public static final String FINDALL_STMT = 
			"SELECT id, name, color, shape, quantity, origin FROM fruit ORDER BY id";
	public static final String FINDBYPK_STMT = 
			"SELECT id, name, color, shape, quantity, origin FROM fruit WHERE id = ?";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	public void getConnection() throws SQLException {
		String connUrl = "jdbc:postgresql://localhost:5432/testdb";
		conn = DriverManager.getConnection(connUrl, "postgres", "postgres");
	}

	public void insert(Fruit fruit) throws SQLException {
		pstmt = conn.prepareStatement(INSERT_STMT, Statement.RETURN_GENERATED_KEYS);
		pstmt.setString(1, fruit.getName());
		pstmt.setString(2, fruit.getColor());
		pstmt.setString(3, fruit.getShape());
		pstmt.setInt(4, fruit.getQuantity());
		pstmt.setString(5, fruit.getOrigin());
		pstmt.executeUpdate();
		
		ResultSet rs = pstmt.getGeneratedKeys();
		if(rs.next()) {
			fruit.setId(rs.getLong(1));
		}
	}

	public void update(Fruit fruit) throws SQLException {
		pstmt = conn.prepareStatement(UPDATE_STMT);
        pstmt.setString(1, fruit.getName());
		pstmt.setString(2, fruit.getColor());
		pstmt.setString(3, fruit.getShape());
		pstmt.setInt(4, fruit.getQuantity());
		pstmt.setString(5, fruit.getOrigin());
		pstmt.setLong(6, fruit.getId());
		pstmt.executeUpdate();
	
	}

	public void delete(long id) throws SQLException {
		pstmt = conn.prepareStatement(DELETE_STMT);
		pstmt.setLong(1, id);
		pstmt.executeUpdate();
	}

	public List<Fruit> findAll() throws SQLException {
		Fruit fruit = null;
		List<Fruit> fruits = new ArrayList<Fruit>();
		pstmt = conn.prepareStatement(FINDALL_STMT);
		rs = pstmt.executeQuery();
		while(rs.next()) {
			fruit = new Fruit();
			fruit.setName(rs.getString(2));
			fruit.setColor(rs.getString(3));
			fruit.setShape(rs.getString(4));
			fruit.setQuantity(rs.getInt(5));
			fruit.setOrigin(rs.getString(6));
			fruits.add(fruit);		
		}
		return fruits;
	}

	public Fruit findById(long id) throws SQLException {		
		Fruit fruit = null;
		pstmt = conn.prepareStatement(FINDBYPK_STMT);
		pstmt.setLong(1, id);
		rs = pstmt.executeQuery();
		if(rs.next()) {
			fruit = new Fruit();
			fruit.setId(rs.getInt(1));
			fruit.setName(rs.getString(2));
			fruit.setColor(rs.getString(3));
			fruit.setShape(rs.getString(4));
			fruit.setQuantity(rs.getInt(5));
			fruit.setOrigin(rs.getString(6));	
		}
		return fruit;
	}

	public void closeConn() throws SQLException {
		if(rs != null) {
			rs.close();
		}
		if(pstmt != null) {
			pstmt.close();
		}		
		if(conn != null) {
			conn.close();
		}		
	}

}
