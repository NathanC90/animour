package org.iii.ee100.sample.music;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

public class RecordDao{
	private static final String INSERT_STMT = "INSERT INTO record (reclab, country, area) VALUES (?,?,?)";
	private static final String UPDATE_STMT ="UPDATE record SET reclab=?, country=?, area=? WHERE id=?";
	private static final String DELETE = "DELETE from record WHERE id=?";
	private static final String FIND_ALL_STMT = "SELECT id, reclab, country, area FROM record ORDER BY id";
	private static final String FIND_BY_ID = "SELECT id, reclab, country, area FROM record WHERE id=?";
	
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	
	private Connection getConnection() throws SQLException {
		String connUrl = "jdbc:postgresql://localhost:5432/testdb";
		String user ="postgres";
		String password = "postgres";
		
		//Connection conn = DriverManager.getConnection(connUrl, user, password);
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
	
	//select all
		public List<Record> findAll(){
			
			Record record = null;
			
			List<Record> rlist = new ArrayList<Record>();
			ResultSet rs = null;
			
			try {
				
				while(rs.next()) {		
				record = new Record();
				
				record.setId(rs.getLong("id"));
				record.setReclab(rs.getString("reclab"));
				record.setCountry(rs.getString("country"));
				record.setArea(rs.getString("area"));
				
				rlist.add(record);
				}

			}catch(SQLException e) {
				e.printStackTrace();
			
			}
			return rlist;
		}   //end of FindAll
	
	//insert
	public void insert(Record record) {
		try {
			PreparedStatement pstmt = conn.prepareStatement(INSERT_STMT, Statement.RETURN_GENERATED_KEYS);
			pstmt.setString(1, record.getReclab());
			pstmt.setString(2, record.getCountry());
			pstmt.setString(3, record.getArea());
			pstmt.executeUpdate();
			ResultSet rs = pstmt.getGeneratedKeys();
			if(rs.next()) {
				record.setId(rs.getLong(1));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
	} //end of insert

    //update
	public void update(Record record) {
		try {
			PreparedStatement pstmt = conn.prepareStatement(UPDATE_STMT);
			pstmt.setString(1, record.getReclab());
			pstmt.setString(2, record.getCountry());
			pstmt.setString(3, record.getArea());
			pstmt.executeUpdate();
			ResultSet rs = pstmt.getGeneratedKeys();
			if(rs.next()) {
				record.setId(rs.getLong(1));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		
		}
	}  //end of update

	//delete
	public void delete(Long id) {
		try {
			PreparedStatement pstmt = conn.prepareStatement(DELETE);

			pstmt.setLong(1, id);
			pstmt.executeUpdate();


		}catch(SQLException e) {
			e.printStackTrace();
		}
		
	}  //end of delete
	
	//findById
	public Record findById(Long id) {
		Record record = null;
		ResultSet rs = null;
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(FIND_BY_ID);
			pstmt.setLong(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				record = new Record();
			record.setId(rs.getLong("id"));
			record.setReclab(rs.getString("reclab"));
			record.setCountry(rs.getString("Country"));
			record.setArea(rs.getString("area"));
			
			}
		}catch(SQLException e) {
			e.printStackTrace();

		}
		return record;
	}  //end of findById

	public void closeConn() {
	try {
		if(pstmt != null) {
			pstmt.close();					
		}
		if (conn != null) {
			conn.close();
		}
	}catch(SQLException e1) {
		e1.printStackTrace();
	}
}

}
	

