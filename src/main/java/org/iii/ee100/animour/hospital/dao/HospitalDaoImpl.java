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
import javax.sql.DataSource;

import org.iii.ee100.animour.hospital.entity.Hospital;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;



public class HospitalDaoImpl implements HospitalDao {
//	DataSource ds = null;
//	public HospitalDaoImpl() {
//		try {
//			Context context = new InitialContext();
//			ds = (DataSource) context.lookup("java:comp/env/jdbc/postgres");
//		} catch (NamingException e) {
//			e.printStackTrace();
//		}
//	}
	
	HikariDataSource ds=null;
	private HikariDataSource DataSource() {
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
			+ " (veterinaryHospId ,   veterinaryHospName , veterinaryHospTel , veterinaryHospAddr  ) "
			+ " values (?, ?, ?, ?)";
	
	

	@Override
	public Hospital insertHosp(Hospital hospital) throws SQLException {
		Hospital result = null;
		Connection conn = null;
		PreparedStatement ps =null;
		try {
			conn = ds.getConnection();
			ps = conn.prepareStatement(INSERT,Statement.RETURN_GENERATED_KEYS);
			ps.setString(1, hospital.getVeterinaryHospId());
			ps.setString(2, hospital.getVeterinaryHospName());
			ps.setString(3, hospital.getVeterinaryHospTel());
			ps.setString(4, hospital.getVeterinaryHospAddr());

			
			int i = ps.executeUpdate();
			if (i == 1) {
				result = this.selectHosp(hospital.getVeterinaryHospId());
			}
			ResultSet rs = ps.getGeneratedKeys();
			if (rs.next()) {
				hospital.setHospNo(rs.getInt(1));

			} 

		} finally {
			if (ps != null) {
				try {
					ps.close();
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
		return result;

	
	}
	
	String update = "update veterinaryHosp"
			+ " set  veterinaryHospName=? , veterinaryHospTel=? , veterinaryHospAddr=? "
			+ "where veterinaryHospId=? ";
	
	

	@Override
	public Hospital updateHosp(Hospital hospital) throws SQLException {
		Hospital result = null;
		Connection conn = null;
		PreparedStatement ps =null;
		try {
			conn = ds.getConnection();
			ps = conn.prepareStatement(update);
			ps.setString(1, hospital.getVeterinaryHospId());
			ps.setString(2, hospital.getVeterinaryHospName());
			ps.setString(3, hospital.getVeterinaryHospTel());
			ps.setString(4, hospital.getVeterinaryHospAddr());

			
			ps.executeUpdate();
			result = this.selectHosp(hospital.getVeterinaryHospId());
			
			ResultSet rs = ps.getGeneratedKeys();
			if (rs.next()) {
				hospital.setHospNo(rs.getInt(1));

			} 

		} finally {
			if (ps != null) {
				try {
					ps.close();
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
		return result;

	
	}
	
	

	String SELECT_BY_id = "Select * from veterinaryHosp where veterinaryHospId = ?";


	@Override
	public Hospital selectHosp(String id) {
		Hospital result = null;
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rset = null;
		try {
			conn = ds.getConnection();
			stmt = conn.prepareStatement(SELECT_BY_id);
			stmt.setString(1, id);
			rset = stmt.executeQuery();
			if (rset.next()) {
				result = new Hospital();
				result.setVeterinaryHospId(rset.getString("veterinaryHospId"));
				result.setVeterinaryHospName(rset.getString("veterinaryHospName"));
				result.setVeterinaryHospTel(rset.getString("veterinaryHospTel"));
				result.setVeterinaryHospAddr(rset.getString("veterinaryHospAddr"));

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (rset != null) {
				try {
					rset.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (stmt != null) {
				try {
					stmt.close();
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
		return result;
	}
	
	
	String SELECT_BY_ids = "Select * from veterinaryHosp where veterinaryHospId = ?";
	

	@Override
	public List<Hospital> selectAllHosp(String id) {
		List<Hospital> resultls = new ArrayList<Hospital>();
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rset = null;
		
		try {
			conn = ds.getConnection();
			stmt = conn.prepareStatement(SELECT_BY_ids);
			stmt.setString(1, id);
			rset = stmt.executeQuery();
			while (rset.next()) {
				Hospital rb=new Hospital();	
				//result = new RegBean();
				rb.setVeterinaryHospId(rset.getString("veterinaryHospId"));
				rb.setVeterinaryHospName(rset.getString("veterinaryHospName"));
				rb.setVeterinaryHospTel(rset.getString("veterinaryHospTel"));
				rb.setVeterinaryHospAddr(rset.getString("veterinaryHospAddr"));		
				
				resultls.add(rb);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (rset != null) {
				try {
					rset.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (stmt != null) {
				try {
					stmt.close();
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
		return resultls;
	}

	String SELECT = "Select * from veterinaryHosp ";
	

	@Override
	public List<Hospital> selectAllHosp() {
		List<Hospital> resultls = new ArrayList<Hospital>();
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rset = null;
		
		try {
			conn = ds.getConnection();
			stmt = conn.prepareStatement(SELECT);
			rset = stmt.executeQuery();
			while (rset.next()) {
				Hospital rb=new Hospital();	
				//result = new RegBean();
				rb.setVeterinaryHospId(rset.getString("veterinaryHospId"));
				rb.setVeterinaryHospName(rset.getString("veterinaryHospName"));
				rb.setVeterinaryHospTel(rset.getString("veterinaryHospTel"));
				rb.setVeterinaryHospAddr(rset.getString("veterinaryHospAddr"));		
				resultls.add(rb);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (rset != null) {
				try {
					rset.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (stmt != null) {
				try {
					stmt.close();
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
		return resultls;
	}


	private static final String delete = "DELETE FROM veterinaryHosp WHERE veterinaryHospId=?";


	@Override
	public void deleteHosp(String id) {
		ResultSet rs = null;

		try (Connection conn = ds.getConnection(); 
				PreparedStatement pstmt = conn.prepareStatement(delete);) {
			pstmt.setString(1, id);
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




}

