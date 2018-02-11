package org.iii.ee100.sample.music;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class MusicDao{
	private static final String INSERT_STMT = "INSERT INTO music VALUES (?,?,?,?,?)";
	private static final String UPDATE_STMT ="UPDATE music SET title=?, pname=?, genre=?, clicks=?, rdate=? WHERE id=?";
	private static final String DELETE = "DELETE music WHERE id=?";
	private static final String FIND_ALL_STMT = "SELECT id, title, pname, genre, clicks, rdate FROM music ORDER BY empno";
	private static final String FIND_BY_ID = "SELECT id, title, pname, genre, clicks, rdate FROM music WHERE id=?";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	//insert
	public void insert(Music music) {
		try {
			String connUrl = "jdbc:postgresql://localhost:5432/testdb";
			conn = DriverManager.getConnection(connUrl, "postgres", "postgres");
			PreparedStatement pstmt = conn.prepareStatement(INSERT_STMT, Statement.RETURN_GENERATED_KEYS);
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
				pstmt.close();
				if (conn != null) {
					conn.close();
				}
			}catch(SQLException e1) {
				e1.printStackTrace();
			}
		}
	} //end of insert

    //update
	public void update(Music music) {
		try {
			String connUrl = "jdbc:postgresql://localhost:5432/testdb";
			conn = DriverManager.getConnection(connUrl, "postgres", "postgres");
			PreparedStatement pstmt = conn.prepareStatement(UPDATE_STMT);
			pstmt.setString(1, music.getTitle());
			pstmt.setString(2, music.getPname());
			pstmt.setString(3, music.getGenre());
			pstmt.setLong(4, music.getClicks());
			pstmt.setDate(5, music.getRdate());
			pstmt.setLong(6, music.getId());
			pstmt.executeUpdate();
			ResultSet rs = pstmt.getGeneratedKeys();
			if(rs.next()) {
				music.setId(rs.getLong(1));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				pstmt.close();
				if (conn != null) {
					conn.close();
				}
			}catch(SQLException e1) {
				e1.printStackTrace();
			}
		}
	}  //end of update

	//delete
	public void delete(Music music) {
		try {
			String connUrl = "jdbc:postgresql://localhost:5432/testdb";
			conn = DriverManager.getConnection(connUrl, "postgres", "postgres");
			PreparedStatement pstmt = conn.prepareStatement(DELETE);

			pstmt.setLong(1, id);
			pstmt.executeUpdate();


		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				pstmt.close();
				if (conn != null) {
					conn.close();
				}
			}catch(SQLException e1) {
				e1.printStackTrace();
			}
		}
	}  //end of delete
	
	//select
	public List<Music> findAll(){
		
		Music music = null;
		
		List<Music> mlist = new ArrayList<Music>();
		ResultSet rs = null;
		
		try {
			String connUrl = "jdbc:postgresql://localhost:5432/testdb";
			conn = DriverManager.getConnection(connUrl, "postgres", "postgres");
			PreparedStatement pstmt = conn.prepareStatement(FIND_ALL_STMT);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {		
			music = new Music();
			
			music.setId(rs.getLong("id"));
			music.setTitle(rs.getString("title"));
			music.setPname(rs.getString("pname"));
			music.setGenre(rs.getString("genre"));
			music.setClicks(rs.getLong("clicks"));
			music.setRdate(rs.getDate("rdate"));
			
			mlist.add(music);
			}

		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				rs.close();
				pstmt.close();
				if (conn != null) {
					conn.close();
				}
			}catch(SQLException e1) {
				e1.printStackTrace();
			}
		}
	}   //end of FindAll
	
	//findById
	public Music findById(Long id) {
		Music music = null;
		ResultSet rs = null;
		
		try {
			String connUrl = "jdbc:postgresql://localhost:5432/testdb";
			conn = DriverManager.getConnection(connUrl, "postgres", "postgres");
			PreparedStatement pstmt = conn.prepareStatement(FIND_BY_ID);
			
			if(rs.next()) {
				music = new Music();
			music.setId(rs.getLong(1));
			music.setTitle(rs.getString("title"));
			music.setPname(rs.getString("pname"));
			music.setGenre(rs.getString("genre"));
			music.setClicks(rs.getLong("clicks"));
			music.setRdate(rs.getDate("rdate"));
			
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				rs.close();
				pstmt.close();
				if (conn != null) {
					conn.close();
				}
			}catch(SQLException e1) {
				e1.printStackTrace();
			}
		}
	}  //end of findById
}
	

