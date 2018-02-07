package org.iii.ee100.sample.music;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MusicDao{
	private static final String INSERT_STMT = "INSERT INTO music VALUES (?,?,?,?,?)";
	private static final String UPDATE_STMT ="UPDATE music SET title=?, pname=?, genre=?, clicks=?, rdate=? WHERE id=?";
	private static final String DELETE = "DELETE music WHERE id=?";
	private static final String FIND_ALL_STMT = "SELECT id, title, pname, genre, clicks, rdate FROM music ORDER BY empno";
	private static final String FIND_BY_ID = "SELECT id, title, pname, genre, clicks, rdate FROM music WHERE id=?";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	public void insert(Music music) {
		try {
			String connUrl = "jdbc:postgresql://localhost:5432/testdb";
			conn = DriverManager.getConnection(connUrl, "postgres", "postgres");
			PreparedStatement pstmt = conn.preparedStatement(insertSTMT, Statement.RETURN_GENERATED_KEYS);
			pstmt.setString(1, music.getTitle());
			pstmt.setString(2, music.getPname());
			pstmt.setString(3, music.getGenre());
			pstmt.setLong(4, music.getClicks());
			pstmt.setDate(5, music.getRdate());
			pstmt.executeUpdate();
			ResultSet rs = pstmt.getGeneratedKeys();
			if(rs.next()) {
				music.setId(rs.getLong(1));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				
				if (conn != null) {
					conn.close();
				}
			}catch(SQLException e1) {
				e1.printStackTrace();
			}
		}
	}
}