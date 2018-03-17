package org.iii.ee100.animour.hotel.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import org.iii.ee100.animour.hotel.entity.HotelBean;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

public class HotelDaoImpl implements HotelDao {
	private static final String InsertStmt = "INSERT INTO hotel ( hotelId, onwer, type, checkIn, total,species,dogName) VALUES ( ?, ?, ?, ?, ?,?)";
	private static final String UpdateStmt = "UPDATE hotel SET  onwer=?, type=?, checkIn=?, total=?,species=?,dogName=? WHERE hotelId = ?";
	private static final String DeleteStmt = "Delete from hotel WHERE hotelId = ?";
	private static final String FindOneStmt = "SELECT hotelId, onwer, type, checkIn, total,species,dogName from hotel where hotelId=?";
	private static final String FindAllStmt = "SELECT hotelId, onwer, type, checkIn, total,species,dogName from hotel order by hotelId";

	
	
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

	/* (non-Javadoc)
	 * @see org.iii.ee100.animour.hotel.dao.HotelDaoImpl#insert(org.iii.ee100.animour.hotel.entity.HotelBean, java.util.Date)
	 */
	@Override
	public void insert(HotelBean hotel, java.util.Date checkIn) {
		ResultSet rs = null;

		try (HikariDataSource ds = getConnection();
				Connection conn = ds.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(InsertStmt, Statement.RETURN_GENERATED_KEYS);) {

			pstmt.setString(1, hotel.getOnwer());
			pstmt.setString(2, hotel.getType());
			pstmt.setInt(3, hotel.getTotal());
			pstmt.setString(4, hotel.getSpecies());
			pstmt.setString(5, hotel.getDogName());
			Timestamp times = new Timestamp(System.currentTimeMillis());
			hotel.setCheckIn(times);
			pstmt.setTimestamp(6, hotel.getCheckIn());
			pstmt.executeUpdate();
			rs = pstmt.getGeneratedKeys();
			if (rs.next()) {
				hotel.setHotelId(rs.getLong(1));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	/* (non-Javadoc)
	 * @see org.iii.ee100.animour.hotel.dao.HotelDaoImpl#update(org.iii.ee100.animour.hotel.entity.HotelBean)
	 */
	@Override
	public void update(HotelBean customer) throws SQLException {
		try (HikariDataSource ds = getConnection();
				Connection conn = ds.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(UpdateStmt);) {
			pstmt.setString(1, customer.getDogName());
			pstmt.setString(2, customer.getOnwer());

			pstmt.setTimestamp(3, customer.getCheckIn());
			pstmt.executeUpdate();

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// ResultSet rs =pstmt.getGeneratedKeys();
		// if(rs.next()) {
		// customer.setCno(rs.getLong(1));
		// }
	}

	/* (non-Javadoc)
	 * @see org.iii.ee100.animour.hotel.dao.HotelDaoImpl#delete(java.lang.Long)
	 */
	@Override
	public void delete(Long hotelId) throws SQLException {

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

	/* (non-Javadoc)
	 * @see org.iii.ee100.animour.hotel.dao.HotelDaoImpl#FindByCno(java.lang.Long)
	 */
	@Override
	public HotelBean FindByCno(Long cno) throws SQLException {
		HotelBean hotels = null;
		ResultSet rs = null;
		try (HikariDataSource ds = getConnection();
				Connection conn = ds.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(FindOneStmt);) {
			rs = pstmt.executeQuery();

			if (rs.next()) {
				hotels = new HotelBean();
				hotels.setHotelId(rs.getLong("hotelid"));
				hotels.setDogName(rs.getString("dogname"));
				hotels.setOnwer(rs.getString("onwer"));
				hotels.setCheckIn(rs.getTimestamp("checkin"));
				hotels.setTotal(rs.getInt("email"));
				hotels.setSpecies(rs.getString("password"));
				hotels.setType(rs.getString("type"));

			}

		} catch (Exception e) {
			e.printStackTrace();

		}
		return hotels;
	}

	/* (non-Javadoc)
	 * @see org.iii.ee100.animour.hotel.dao.HotelDaoImpl#getAll()
	 */
	@Override
	public List<HotelBean> getAll() throws SQLException {
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
				hotel.setDogName(rs.getString("name"));
				hotel.setSpecies(rs.getString("species"));
				hotel.setTotal(rs.getInt("total"));
				hotel.setType(rs.getString("type"));
				hotel.setCheckIn(rs.getTimestamp("checkin"));
				hotels.add(hotel);

			}
		} catch (Exception e) {
			e.printStackTrace();

		}
		return hotels;
	}

}
