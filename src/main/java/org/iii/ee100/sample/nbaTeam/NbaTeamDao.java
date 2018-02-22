package org.iii.ee100.sample.nbaTeam;

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

public class NbaTeamDao {
	private static final String INSERT_STMT = "INSERT INTO NbaTeam (TeamName,ranking,win,lose) VALUES (?,?,?,?,?)";
	private static final String UPDATE_STMT = "UPDATE NbaTeam set TeamName=?,ranking=?,win=? lose=?,WHERE Id=?";
	private static final String DELETE_STMT = "DELETE from NbaTeam WHERE Id=?";
	private static final String GET_ONE_STMT = "SELECT Id,TeamName,ranking,win,lose FROM NbaTeam WHERE Id=?";
	private static final String GET_ALL_STMT = "SELECT Id,TeamName,ranking,win,lose FROM NbaTeam ORDER BY Id";

	private Connection conn;
	private PreparedStatement pstmt;

	public Connection getConnection() throws SQLException {
		String connUrl = "jdbc:postgresql://localhost:5432/testdb";
		String user = "postgres";
		String password = "postgres";
		//conn = DriverManager.getConnection(connUrl, "postgres", "postgres");
		
		
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
	
	public void closeConn() throws SQLException {
		if(pstmt !=null)
			pstmt.close();
		if (conn != null)
			conn.close();
	}

	public void insert(NbaTeam np) throws SQLException {
		conn = getConnection();
		pstmt = conn.prepareStatement(INSERT_STMT, Statement.RETURN_GENERATED_KEYS);
		pstmt.setString(1, np.getTeamName());
		pstmt.setInt(2, np.getRanking());
		pstmt.setInt(3, np.getWin());
		pstmt.setInt(4, np.getLose());
		pstmt.executeUpdate();
		ResultSet rsKey = pstmt.getGeneratedKeys();
		if (rsKey.next()) {
			np.setId(rsKey.getLong(1));
		}

	}

	public void update(NbaTeam np) throws SQLException {
		conn = getConnection();
		pstmt = conn.prepareStatement(UPDATE_STMT);
		pstmt.setLong(6, np.getId());
		pstmt.setString(1, np.getTeamName());
		pstmt.setInt(2, np.getRanking());
		pstmt.setInt(3, np.getWin());
		pstmt.setInt(4, np.getLose());
		pstmt.executeUpdate();
	}

	public void delete(long Id) throws SQLException {
		conn = getConnection();
		pstmt = conn.prepareStatement(DELETE_STMT);
		pstmt.setLong(1, Id);
		pstmt.executeUpdate();
	}

	public List<NbaTeam> findAll() throws SQLException {
		conn = getConnection();
		NbaTeam np = null;
		List<NbaTeam> nps = new ArrayList<NbaTeam>();
		pstmt = conn.prepareStatement(GET_ALL_STMT);
		ResultSet rs = pstmt.executeQuery();
		while (rs.next()) {
			np = new NbaTeam();
			np.setId(rs.getLong("Id"));
			np.setTeamName(rs.getString("TeamName"));
			np.setranking(rs.getInt("ranking"));
			np.setwin(rs.getInt("win"));
			np.setlose(rs.getInt("lose"));
			
			nps.add(np);

		}

		return nps;

	}
	public List<NbaPlayer> findAllPlayer(long id) throws SQLException {
		conn = getConnection();
		NbaPlayer np = null;
		List<NbaPlayer> nps = new ArrayList<NbaPlayer>();
		String findplayersql = "SELECT id, name, fg_percentage, three_pointer_percentage, apg FROM NbaPlayer WHERE matchid = ?";
		pstmt.setLong(1, id);
		pstmt = conn.prepareStatement(findplayersql);
		ResultSet rs = pstmt.executeQuery();
		while (rs.next()) {
			np = new NbaPlayer();
			np.setId(rs.getLong("Id"));
			np.setName(rs.getString("name"));
			np.setFg_percentage(rs.getInt("fg_percentage"));
			np.setThree_pointer_percentage(rs.getInt("three_pointer_percentage"));
			np.setApg(rs.getInt("apg"));
			np.setMatchid(rs.getLong("matchid"));
			nps.add(np);

		}

		return nps;

	}
	

	public NbaTeam findById(long Id) throws SQLException {
		conn = getConnection();
		NbaTeam np = null;
		pstmt = conn.prepareStatement(GET_ONE_STMT);
		pstmt.setLong(1, Id);
		ResultSet rs = pstmt.executeQuery();
		if (rs.next()) {
			np = new NbaTeam();
			np.setId(rs.getLong("Id"));
			np.setTeamName(rs.getString("TeamName"));
			np.setranking(rs.getInt("ranking"));
			np.setwin(rs.getInt("Win"));
			np.setlose(rs.getInt("Lose"));
			np.setList(findAllPlayer(Id));
		}

		return np;

	}
}
