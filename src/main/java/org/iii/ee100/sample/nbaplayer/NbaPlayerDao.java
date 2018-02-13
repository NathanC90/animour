package org.iii.ee100.sample.nbaplayer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class NbaPlayerDao {
	private static final String INSERT_STMT = "INSERT INTO nbaplayer (name,three_pointer_percentage,fg_percentage,apg) VALUES (?,?,?,?)";
	private static final String UPDATE_STMT = "UPDATE nbaplayer set name=?,three_pointer_percentage=?,fg_percentage=?,apg=? WHERE Id=?";
	private static final String DELETE_STMT = "DELETE from nbaplayer WHERE Id=?";
	private static final String GET_ONE_STMT = "SELECT Id,name,three_pointer_percentage,fg_percentage,apg FROM nbaplayer WHERE Id=?";
	private static final String GET_ALL_STMT = "SELECT Id,name,three_pointer_percentage,fg_percentage,apg FROM nbaplayer ORDER BY Id";

	private Connection conn;
	private PreparedStatement pstmt;

	public void getConnection() throws SQLException {
		String connUrl = "jdbc:postgresql://localhost:5432/testdb";
		conn = DriverManager.getConnection(connUrl, "postgres", "postgres");
	}

	public void closeConn() throws SQLException {
		if (conn != null)
			conn.close();
	}

	public void insert(NbaPlayer np) throws SQLException {
		pstmt = conn.prepareStatement(INSERT_STMT, Statement.RETURN_GENERATED_KEYS);
		pstmt.setString(1, np.getName());
		pstmt.setInt(2, np.getThree_pointer_percentage());
		pstmt.setInt(3, np.getFg_percentage());
		pstmt.setInt(4, np.getApg());
		pstmt.executeUpdate();
		ResultSet rsKey = pstmt.getGeneratedKeys();
		if (rsKey.next()) {
			np.setId(rsKey.getLong(1));
		}

	}

	public void update(NbaPlayer np) throws SQLException {
		pstmt = conn.prepareStatement(UPDATE_STMT);
		pstmt.setLong(5, np.getId());
		pstmt.setString(1, np.getName());
		pstmt.setInt(2, np.getThree_pointer_percentage());
		pstmt.setInt(3, np.getFg_percentage());
		pstmt.setInt(4, np.getApg());
		pstmt.executeUpdate();
	}

	public void delete(long Id) throws SQLException {
		pstmt = conn.prepareStatement(DELETE_STMT);
		pstmt.setLong(1, Id);
		pstmt.executeUpdate();
	}

	public List<NbaPlayer> findAll() throws SQLException {
		NbaPlayer np = null;
		List<NbaPlayer> nps = new ArrayList<NbaPlayer>();
		pstmt = conn.prepareStatement(GET_ALL_STMT);
		ResultSet rs = pstmt.executeQuery();
		while (rs.next()) {
			np = new NbaPlayer();
			np.setId(rs.getLong("Id"));
			np.setName(rs.getString("name"));
			np.setThree_pointer_percentage(rs.getInt("three_pointer_percentage"));
			np.setFg_percentage(rs.getInt("fg_percentage"));
			np.setApg(rs.getInt("apg"));
			nps.add(np);

		}

		return nps;

	}

	public NbaPlayer findById(long Id) throws SQLException {
		NbaPlayer np = null;
		pstmt = conn.prepareStatement(GET_ONE_STMT);
		pstmt.setLong(1, Id);
		ResultSet rs = pstmt.executeQuery();
		if (rs.next()) {
			np = new NbaPlayer();
			np.setId(rs.getLong("Id"));
			np.setName(rs.getString("name"));
			np.setThree_pointer_percentage(rs.getInt("three_pointer_percentage"));
			np.setFg_percentage(rs.getInt("fg_percentage"));
			np.setApg(rs.getInt("apg"));
		}

		return np;

	}
}
