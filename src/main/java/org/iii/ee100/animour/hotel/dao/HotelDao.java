package org.iii.ee100.animour.hotel.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.iii.ee100.animour.hotel.entity.HotelBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

@Repository
public class HotelDao{
	private static final String InsertStmt = "INSERT INTO hotel ( onwer, type, checkIn, total,species,dogName) VALUES ( ?, ?, ?, ?, ?,?)";
	private static final String UpdateStmt = "UPDATE hotel SET  onwer=?, type=?, checkIn=?, total=?,species=?,dogName=? WHERE hotelId = ?";
	private static final String DeleteStmt = "Delete from hotel WHERE hotelId = ?";
	private static final String FindOneStmt = "SELECT hotelId, onwer, type, checkIn, total,species,dogName from hotel where hotelId=?";
	private static final String FindAllStmt = "SELECT hotelId, onwer, type, checkIn, total,species,dogName from hotel order by hotelId";
	private static final String LastSixStmt="SELECT *  FROM  hotel ORDER BY hotel DESC LIMIT 6";
	@Autowired
	DataSource datasource;

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

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.iii.ee100.animour.hotel.dao.HotelDaoImpl#insert(org.iii.ee100.animour.
	 * hotel.entity.HotelBean, java.util.Date)
	 */
	public HotelBean insert(HotelBean bean) {
		ResultSet rs = null;
		try (HikariDataSource ds = getConnection();
				Connection conn = ds.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(InsertStmt, Statement.RETURN_GENERATED_KEYS);) {

			pstmt.setString(1, bean.getOnwer());
			pstmt.setString(2, bean.getType());
			pstmt.setInt(4, bean.getTotal());
			pstmt.setString(5, bean.getSpecies());
			pstmt.setString(6, bean.getDogName());

			pstmt.setTimestamp(3, bean.getCheckIn());
			pstmt.executeUpdate();
			rs = pstmt.getGeneratedKeys();
			if (rs.next()) {
				bean.setHotelId(rs.getLong(1));
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
		return bean;


	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.iii.ee100.animour.hotel.dao.HotelDaoImpl#update(org.iii.ee100.animour.
	 * hotel.entity.HotelBean)
	 */
	public HotelBean update(HotelBean customer) {
		try (HikariDataSource ds = getConnection();
				Connection conn = ds.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(UpdateStmt);) {
			pstmt.setString(6, customer.getDogName());
			pstmt.setString(1, customer.getOnwer());
			pstmt.setTimestamp(3, customer.getCheckIn());
			pstmt.setString(5, customer.getSpecies());
			pstmt.setInt(4, customer.getTotal());
			pstmt.setString(2, customer.getType());
			pstmt.setLong(7, customer.getHotelId());

			pstmt.executeUpdate();

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return customer;

		// ResultSet rs =pstmt.getGeneratedKeys();
		// if(rs.next()) {
		// customer.setCno(rs.getLong(1));
		// }
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.iii.ee100.animour.hotel.dao.HotelDaoImpl#delete(java.lang.Long)
	 */
	public void delete(Long hotelId) {

		try (HikariDataSource ds = getConnection();
				Connection conn = ds.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(DeleteStmt);) {
			pstmt.setLong(1, hotelId);
			pstmt.executeUpdate();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.iii.ee100.animour.hotel.dao.HotelDaoImpl#FindByCno(java.lang.Long)
	 */
	public HotelBean FindById(Long hotelId) {
		HotelBean hotels = null;
		ResultSet rs = null;
		try (HikariDataSource ds = getConnection();
				Connection conn = ds.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(FindOneStmt);) {
			pstmt.setLong(1, hotelId);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				hotels = new HotelBean();
				hotels.setDogName(rs.getString("dogname"));
				hotels.setOnwer(rs.getString("onwer"));
				hotels.setCheckIn(rs.getTimestamp("checkin"));
				hotels.setTotal(rs.getInt("total"));
				hotels.setSpecies(rs.getString("species"));
				hotels.setType(rs.getString("type"));

			}

		} catch (Exception e) {
			e.printStackTrace();

		}finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return hotels;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.iii.ee100.animour.hotel.dao.HotelDaoImpl#getAll()
	 */
	public List<HotelBean> getAll() {
		HotelBean hotel = null;
		List<HotelBean> hotels = new ArrayList<HotelBean>();
		ResultSet rs = null;

		try (HikariDataSource ds = getConnection();
				Connection conn = ds.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(FindAllStmt);) {
			rs = pstmt.executeQuery();
			while (rs.next()) {
				hotel = new HotelBean();
				hotel.setHotelId(rs.getLong("hotelid"));
				hotel.setOnwer(rs.getString("onwer"));
				hotel.setDogName(rs.getString("dogname"));
				hotel.setSpecies(rs.getString("species"));
				hotel.setTotal(rs.getInt("total"));
				hotel.setType(rs.getString("type"));
				hotel.setCheckIn(rs.getTimestamp("checkin"));
				hotels.add(hotel);

			}
		} catch (Exception e) {
			e.printStackTrace();

		}finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return hotels;
	}

	public List<HotelBean> getSix() {
		HotelBean hotel = new HotelBean();
		List<HotelBean> sixHotels=new ArrayList<HotelBean>();
		ResultSet rs = null;
		try(HikariDataSource ds = getConnection();
				Connection conn = ds.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(LastSixStmt);) {
			rs = pstmt.executeQuery();
			while (rs.next()) {
				hotel = new HotelBean();
				hotel.setHotelId(rs.getLong("hotelid"));
				hotel.setOnwer(rs.getString("onwer"));
				hotel.setDogName(rs.getString("dogname"));
				hotel.setSpecies(rs.getString("species"));
				hotel.setTotal(rs.getInt("total"));
				hotel.setType(rs.getString("type"));
				hotel.setCheckIn(rs.getTimestamp("checkin"));
				sixHotels.add(hotel);

			}
			
		} catch (Exception e) {
		}
		return sixHotels;
	}
	

}
