package org.iii.ee100.animour.forum.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;

import org.iii.ee100.animour.forum.entity.Article;
import org.springframework.stereotype.Repository;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;
@Repository
public class ArticleDao{
	private static final String insertSTMT = "insert into article(postName,articleSubject,articleContent,postTime) values (?, ?, ?, ?)";
	private static final String updateSTMT = "update article set postName=?, articleSubject=?, articleContent=?, postTime=? where articleId=?";
	private static final String deleteSTMT = "delete from article where articleId=?";
	private static final String findAllSTMT = "select articleId,postName,articleSubject,articleContent,postTime from article order by articleId";
	private static final String findByIdSTMT = "select articleId,postName,articleSubject,articleContent,postTime from article where articleId=?";
	private static final String findNew = "select articleId, postName, articleSubject, articleContent, postTime from article order by postTime desc fetch first 3 rows only";
	HikariDataSource ds = getConnection();

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

	
	public void insert(Article article) {
		ResultSet rs = null;
		try (Connection conn = ds.getConnection();
			 PreparedStatement pstmt = conn.prepareStatement(insertSTMT, Statement.RETURN_GENERATED_KEYS);) {
			pstmt.setString(1, article.getPostName());
			pstmt.setString(2, article.getSubject());
			pstmt.setString(3, article.getContent());
			// Date date = new Date();
			Timestamp ts = new Timestamp(System.currentTimeMillis());
			article.setPostTime(ts);
			pstmt.setTimestamp(4, article.getPostTime());
			pstmt.executeUpdate();
			rs = pstmt.getGeneratedKeys();
			if (rs.next()) {
				article.setId(rs.getLong(1));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			if (rs!=null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				} 
			}
		}
	}

	
	public void update(Article article) {
		try (Connection conn = ds.getConnection(); 
			 PreparedStatement pstmt = conn.prepareStatement(updateSTMT);) {
			pstmt.setString(1, article.getPostName());
			pstmt.setString(2, article.getSubject());
			pstmt.setString(3, article.getContent());
			pstmt.setTimestamp(4, article.getPostTime());
			pstmt.setLong(5, article.getId());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}


	public void delete(Long articleId) {
		try (Connection conn = ds.getConnection(); 
			 PreparedStatement pstmt = conn.prepareStatement(deleteSTMT);) {
			pstmt.setLong(1, articleId);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}


	public ArrayList<Article> findAll() {
		ResultSet rs = null;
		Article article = new Article();
		ArrayList<Article> articles = new ArrayList<Article>();
		try (Connection conn = ds.getConnection(); 
			 PreparedStatement pstmt = conn.prepareStatement(findAllSTMT);) {
			rs = pstmt.executeQuery();
			while (rs.next()) {
				article = new Article();
				article.setId(rs.getLong("articleId"));
				article.setPostName(rs.getString("postName"));
				article.setSubject(rs.getString("articleSubject"));
				article.setContent(rs.getString("articleContent"));
				article.setPostTime(rs.getTimestamp("postTime"));
				articles.add(article);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			if (rs!=null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				} 
			}
		}
		return articles;
	}

	public Article findOne(Long articleId) {
		Article article = null;
		ResultSet rs = null;
		try (Connection conn = ds.getConnection(); 
			 PreparedStatement pstmt = conn.prepareStatement(findByIdSTMT);) {
			pstmt.setLong(1, articleId);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				article = new Article();
				article.setId(rs.getLong("articleId"));
				article.setPostName(rs.getString("postName"));
				article.setSubject(rs.getString("articleSubject"));
				article.setContent(rs.getString("articleContent"));
				article.setPostTime(rs.getTimestamp("postTime"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			if (rs!=null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				} 
			}
		}
		return article;
	}
	public ArrayList<Article> findNew(){
		ResultSet rs = null;
		Article article = new Article();
		ArrayList<Article> articles = new ArrayList<Article>();
		try (Connection conn = ds.getConnection(); 
			 PreparedStatement pstmt = conn.prepareStatement(findNew);) {
//			pstmt.setInt(1, rows);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				article = new Article();
				article.setId(rs.getLong("articleId"));
				article.setPostName(rs.getString("postName"));
				article.setSubject(rs.getString("articleSubject"));
				article.setContent(rs.getString("articleContent"));
				article.setPostTime(rs.getTimestamp("postTime"));
				articles.add(article);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			if (rs!=null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				} 
			}
		}
		return articles;
	}
}
