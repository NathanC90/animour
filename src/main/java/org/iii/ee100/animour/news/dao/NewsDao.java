package org.iii.ee100.animour.news.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.iii.ee100.animour.news.entity.NewsBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;




@Repository
public class NewsDao{
	@Autowired
	DataSource dataSource;
	
//	public static void main(String[] args) {
		//測試insert
//		NewsDaoImpl insert = new NewsDaoImpl();
		
//		NewsBean bean = new NewsBean();
//		bean.setSubject("test subject");
//		bean.setContent("test content");
//		bean.setPublishTime(java.sql.Date.valueOf("2018-01-01"));
//		bean.setPublishTimeEnd(java.sql.Date.valueOf("2018-06-01"));
//		bean.setCreateUser("admin");
//		bean.setCreateTime(new java.sql.Timestamp(System.currentTimeMillis()));
//		
//		insert.insert(bean);
		
		//測試update
//		NewsDaoImpl update = new NewsDaoImpl();
//		NewsBean bean = new NewsBean();
//		bean.setSubject("update subject");
//		bean.setContent("update content");
//		bean.setUpdateUser("update admin");
//		bean.setUpdateTime(new java.sql.Timestamp(System.currentTimeMillis()));
//		bean.setSeqno(12L);
//		
//		update.update(bean);
		
		//測試SELECT_BY_ID
//		NewsDaoImpl select = new NewsDaoImpl();
//		NewsBean bean = new NewsBean();
//		
//		
//		
//		System.out.println(select.findOne(11L));
		
		//測試SELECT_ALL
//		NewsDaoImpl select = new NewsDaoImpl();
//		
//		System.out.println(select.findAll());
		
		//測試DELETE
//		NewsDaoImpl delete = new NewsDaoImpl();
//		delete.delete(11L);		
		
//	}
	

	
	
	
	private static final String INSERT = "INSERT INTO news (subject, content, publishTime, publishTimeEnd, createUser, createTime ) values (?, ?,  ?, ?, ?, ?)";
	
	
	
	
	public void insert(NewsBean bean)  {
		ResultSet rset = null;

		try(Connection conn = this.dataSource.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(INSERT,Statement.RETURN_GENERATED_KEYS);
			) {
			pstmt.setString(1, bean.getSubject());
			pstmt.setString(2, bean.getContent());
			pstmt.setDate(3, bean.getPublishTime());
			pstmt.setDate(4, bean.getPublishTimeEnd());
			pstmt.setString(5, bean.getCreateUser());
			pstmt.setTimestamp(6, bean.getCreateTime());
			pstmt.executeUpdate();
			
			rset = pstmt.getGeneratedKeys();
			if (rset.next()) {
				bean.setSeqno(rset.getLong(1));

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
		}
	}// end of insert
	
	String update = "update news set subject=? , content=? , updateUser=?, updateTime=? where seqno=?";
	
	
	
	
	public void update(NewsBean bean) {
		try (Connection conn = this.dataSource.getConnection();
			 PreparedStatement pstmt = conn.prepareStatement(update);){
			pstmt.setLong(5, bean.getSeqno());
			pstmt.setString(1, bean.getSubject());
			pstmt.setString(2, bean.getContent());
			pstmt.setString(3, bean.getUpdateUser());
			pstmt.setTimestamp(4, bean.getUpdateTime());

			
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}//end update
	
	
	

	private static final String SELECT_BY_SEQNO = "Select seqno, subject, content, updatetime from news where seqno = ?";

	
	
	public NewsBean findOne(Long seqno) {
		NewsBean result = null;

		ResultSet rset = null;
		try (Connection conn = this.dataSource.getConnection();
			 PreparedStatement pstmt = conn.prepareStatement(SELECT_BY_SEQNO);
			){			
			pstmt.setLong(1, seqno);
			rset = pstmt.executeQuery();
			if (rset.next()) {
				result = new NewsBean();
				result.setSeqno(rset.getLong("seqno"));
				result.setSubject(rset.getString("subject"));
				result.setContent(rset.getString("content"));
				result.setUpdateTime(rset.getTimestamp("updatetime"));

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
			
		}
		return result;
	}
	
	

	private static final String SELECT_ALL = "Select seqno, subject, content, updateTime from news order by seqno desc fetch first 6 rows only";
	
	
	
	public List<NewsBean> findAll() {
		List<NewsBean> resultls = new ArrayList<NewsBean>();
		ResultSet rset= null;
		
		try(Connection conn = this.dataSource.getConnection();
				 PreparedStatement pstmt = conn.prepareStatement(SELECT_ALL);
				) {

			rset = pstmt.executeQuery();
			while (rset.next()) {
				NewsBean bean=new NewsBean();	
				bean.setSeqno(rset.getLong("seqno"));
				bean.setSubject(rset.getString("subject"));
				bean.setContent(rset.getString("content"));
				bean.setUpdateTime(rset.getTimestamp("updatetime"));		
				resultls.add(bean);
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
			
		}
		return resultls;
	}


	private static final String DELETE = "DELETE FROM news WHERE seqno=?";

	
	
	public void delete(Long seqno) {

		try (Connection conn = this.dataSource.getConnection(); 
				PreparedStatement pstmt = conn.prepareStatement(DELETE);) {
			pstmt.setLong(1, seqno);
			pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		
	}
	}

}

