package org.iii.ee100.animour.hotel.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.iii.ee100.animour.hotel.entity.Hotel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class HotelDao{
	private static final String InsertStmt = "INSERT INTO hotel ( onwer, type, checkIn, total,species,dogName) VALUES ( ?, ?, ?, ?, ?,?)";
	private static final String UpdateStmt = "UPDATE hotel SET  onwer=?, type=?, checkIn=?, total=?,species=?,dogName=? WHERE Id = ?";
	private static final String DeleteStmt = "Delete from hotel WHERE Id = ?";
	private static final String FindOneStmt = "SELECT Id, onwer, type, checkIn, total,species,dogName from hotel where Id=?";
	private static final String FindAllStmt = "SELECT Id, onwer, type, checkIn, total,species,dogName from hotel order by Id";
	private static final String LastSixStmt="SELECT *  FROM  hotel ORDER BY hotel DESC LIMIT 6";
	@Autowired
	DataSource datasource;

//	private HikariDataSource getConnection() {
//		String connUrl = "jdbc:postgresql://localhost:5432/testdb";
//		String user = "postgres";
//		String password = "postgres";
//		HikariConfig config = new HikariConfig();
//		config.setJdbcUrl(connUrl);
//		config.setUsername(user);
//		config.setPassword(password);
//		config.addDataSourceProperty("cachePrepStmts", "true");
//		config.addDataSourceProperty("prepStmtCacheSize", "250");
//		config.addDataSourceProperty("prepStmtCacheSqlLimit", "2048");
//
//		HikariDataSource ds = new HikariDataSource(config);
//		return ds;
//
//	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.iii.ee100.animour.hotel.dao.HotelDaoImpl#insert(org.iii.ee100.animour.
	 * hotel.entity.HotelBean, java.util.Date)
	 */
	public Hotel insert(Hotel hotel) {
		ResultSet rs = null;
		try (
				Connection conn = this.datasource.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(InsertStmt, Statement.RETURN_GENERATED_KEYS);) {

			pstmt.setString(1, hotel.getOnwer());
			pstmt.setString(2, hotel.getType());
			pstmt.setInt(4, hotel.getTotal());
			pstmt.setString(5, hotel.getSpecies());
			pstmt.setString(6, hotel.getDogName());

			pstmt.setTimestamp(3, hotel.getCheckIn());
			pstmt.executeUpdate();
			rs = pstmt.getGeneratedKeys();
			if (rs.next()) {
				hotel.setId(rs.getLong(1));
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
		return hotel;


	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.iii.ee100.animour.hotel.dao.HotelDaoImpl#update(org.iii.ee100.animour.
	 * hotel.entity.HotelBean)
	 */
	public Hotel update(Hotel hotel) {

		try (
				Connection conn = this.datasource.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(UpdateStmt);) {
			pstmt.setString(6, hotel.getDogName());
			pstmt.setString(1, hotel.getOnwer());
			pstmt.setTimestamp(3, hotel.getCheckIn());
			pstmt.setString(5, hotel.getSpecies());
			pstmt.setInt(4, hotel.getTotal());
			pstmt.setString(2, hotel.getType());
			pstmt.setLong(7, hotel.getId());

			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return hotel;

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
	public void delete(Long id) {


		try (
				Connection conn = this.datasource.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(DeleteStmt);) {
			pstmt.setLong(1, id);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.iii.ee100.animour.hotel.dao.HotelDaoImpl#FindByCno(java.lang.Long)
	 */
	public Hotel FindById(Long id) {

		Hotel hotels = null;
		ResultSet rs = null;
		try (
				Connection conn = this.datasource.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(FindOneStmt);) {
			pstmt.setLong(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				hotels = new Hotel();
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
	public List<Hotel> getAll() {

		Hotel hotel = null;
		List<Hotel> hotels = new ArrayList<Hotel>();
		ResultSet rs = null;

		try (
				Connection conn = this.datasource.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(FindAllStmt);) {
			rs = pstmt.executeQuery();
			while (rs.next()) {
				hotel = new Hotel();
				hotel.setId(rs.getLong("id"));
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

	public List<Hotel> getSix() {

		Hotel hotel = new Hotel();
		List<Hotel> sixHotels=new ArrayList<Hotel>();
		ResultSet rs = null;

		try(

				Connection conn = this.datasource.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(LastSixStmt);) {
			rs = pstmt.executeQuery();
			while (rs.next()) {
				hotel = new Hotel();
				hotel.setId(rs.getLong("id"));
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
