package org.iii.ee100.animour.hospital.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

//import javax.naming.Context;
//import javax.naming.InitialContext;
//import javax.naming.NamingException;
//import javax.sql.DataSource;

import org.iii.ee100.animour.hospital.entity.Hospital;
import org.springframework.stereotype.Repository;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;


@Repository
public class HospitalDao  {
//	HikariDataSource ds = hikariDS();
//	public HikariDataSource hikariDS() {
//		try {
//			Context context = new InitialContext();
//			ds = (HikariDataSource) context.lookup("java:comp/env/jdbc/postgres");
//		} catch (NamingException e) {
//			e.printStackTrace();
//		} return ds;
//	}
	
	HikariDataSource ds=dataSource();
	private HikariDataSource dataSource() {
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
		return ds;
	}
	
	
	
	String INSERT = "insert into veterinaryHosp"
			+ " (id ,   Name , Tel , Addr  ) "
			+ " values (?, ?, ?, ?)";
	
	
	public void insertHosp(Hospital hospital)  {
		ResultSet rs = null;

		try(Connection conn = ds.getConnection();
			PreparedStatement ps = conn.prepareStatement(INSERT,Statement.RETURN_GENERATED_KEYS);
			) {
			ps.setString(1, hospital.getId());
			ps.setString(2, hospital.getName());
			ps.setString(3, hospital.getTel());
			ps.setString(4, hospital.getAddr());
			ps.executeUpdate();
			
			rs = ps.getGeneratedKeys();
			if (rs.next()) {
				hospital.setNo(rs.getInt(1));

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
	}// end of insert
	
	String update = "update veterinaryHosp"
			+ " set  Name=? , Tel=? , Addr=? "
			+ "where Id=? ";
	
	
	public void updateHosp(Hospital hospital) {
		try (Connection conn = ds.getConnection();
			 PreparedStatement ps = conn.prepareStatement(update);
				){
			ps.setString(4, hospital.getId());
			ps.setString(1, hospital.getName());
			ps.setString(2, hospital.getTel());
			ps.setString(3, hospital.getAddr());

			
			ps.executeUpdate();
			Hospital result = this.findOneHosp(hospital.getId());
			
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}//end update
	
	
	

	private static final String SELECT_BY_ID = "Select * from veterinaryHosp where Id = ?";

	public Hospital findOneHosp(String id) {
		Hospital result = null;

		ResultSet rs = null;
		try (Connection conn = ds.getConnection();
			 PreparedStatement ps = conn.prepareStatement(SELECT_BY_ID);
			){			
			ps.setString(1, id);
			rs = ps.executeQuery();
			if (rs.next()) {
				result = new Hospital();
				result.setId(rs.getString("Id"));
				result.setName(rs.getString("Name"));
				result.setTel(rs.getString("Tel"));
				result.setAddr(rs.getString("Addr"));

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
		return result;
	}
	
	

	private static final String SELECT_ALL = "Select * from veterinaryHosp order by No";
	
	public List<Hospital> findAllHosp() {
		List<Hospital> resultls = new ArrayList<Hospital>();
		ResultSet rs= null;
		
		try(Connection conn = ds.getConnection();
				 PreparedStatement ps = conn.prepareStatement(SELECT_ALL);
				) {

			rs = ps.executeQuery();
			while (rs.next()) {
				Hospital rb=new Hospital();	
				rb.setId(rs.getString("Id"));
				rb.setName(rs.getString("Name"));
				rb.setTel(rs.getString("Tel"));
				rb.setAddr(rs.getString("Addr"));		
				resultls.add(rb);
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
		return resultls;
	}


	private static final String DELETE = "DELETE FROM veterinaryHosp WHERE Id=?";

	public void deleteHosp(String id) {

		try (Connection conn = ds.getConnection(); 
				PreparedStatement ps = conn.prepareStatement(DELETE);) {
			ps.setString(1, id);
			ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		
	}
	}

	
	
	
	private static final String SELECT_BY_SEQNO = "Select * from veterinaryHosp where HospNO = ?";

	public Hospital findOneHospbySEQNO(int no) {
		Hospital result = null;

		ResultSet rs = null;
		try (Connection conn = ds.getConnection();
			 PreparedStatement ps = conn.prepareStatement(SELECT_BY_SEQNO);
			){			
			ps.setInt(1, no);
			rs = ps.executeQuery();
			if (rs.next()) {
				result = new Hospital();
				result.setId(rs.getString("Id"));
				result.setName(rs.getString("Name"));
				result.setTel(rs.getString("Tel"));
				result.setAddr(rs.getString("Addr"));

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
		return result;
	}//end SELECT_BY_SEQNO
	
	
	


}

