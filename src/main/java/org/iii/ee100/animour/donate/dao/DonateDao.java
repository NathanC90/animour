package org.iii.ee100.animour.donate.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.iii.ee100.animour.donate.entity.Donate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class DonateDao {

	private static final String INSERT_STMT = "ISNERT INTO donate (name, price, email) values (?, ?, ?)";
	private static final String UPDATE_STMT = "UPDATE donate SET name = ?, price = ?, email = ? WHERE id = ?";
	private static final String DELETE_STMT = "DELETE FROM donate WHERE id = ?";
	private static final String FINDALL_STMT = "SELECT id, name, price, email FROM donate order by id desc fetch first 6 rows only";
	private static final String FINDBYID_STMT = "SELECT id, name, price, email FROM donate WHERE id = ?";

	@Autowired
	DataSource dataSource;

	public void insert() {
		Donate donate = new Donate();
		ResultSet rs = null;
		try (Connection conn = dataSource.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(INSERT_STMT, Statement.RETURN_GENERATED_KEYS);) {
			pstmt.setString(1, donate.getName());
			pstmt.setInt(2, donate.getPrice());
			pstmt.setString(3, donate.getEmail());
			pstmt.executeUpdate();
			rs = pstmt.getGeneratedKeys();
			if (rs.next()) {
				donate.setId(rs.getLong(1));
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

	public void update() {
		Donate donate = new Donate();
		ResultSet rs = null;
		try (Connection conn = dataSource.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(UPDATE_STMT);) {
			pstmt.setString(1, donate.getName());
			pstmt.setInt(2, donate.getPrice());
			pstmt.setString(3, donate.getEmail());
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

	public void delete(Long id) {
		Donate donate = new Donate();
		ResultSet rs = null;
		try (Connection conn = dataSource.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(DELETE_STMT);) {
			pstmt.setLong(1, donate.getId());
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

	public List<Donate> findAll() {
		ResultSet rs = null;
		Donate donate = null;
		List<Donate> lst = new ArrayList<Donate>();

		try (Connection conn = dataSource.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(FINDALL_STMT);) {

			rs = pstmt.executeQuery();

			while (rs.next()) {
				donate = new Donate();
				donate.setId(rs.getLong("id"));
				donate.setName(rs.getString("name"));
				donate.setPrice(rs.getInt("price"));
				donate.setEmail(rs.getString("email"));
				lst.add(donate);
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
		return lst;
	}

	public Donate findById(Long id) {
		Donate donate = new Donate();
		ResultSet rs = null;

		try (Connection conn = dataSource.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(FINDBYID_STMT);) {

			pstmt.setLong(1, donate.getId());
			rs = pstmt.executeQuery();

			if (rs.next()) {
				donate.setId(rs.getLong("id"));
				donate.setName(rs.getString("name"));
				donate.setPrice(rs.getInt("price"));
				donate.setEmail(rs.getString("email"));
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
		return donate;
	}

}
