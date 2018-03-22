package org.iii.ee100.animour.news.dao;

import java.util.List;

import org.iii.ee100.animour.news.entity.NewsBean;

public interface NewsDao {

	void insert(NewsBean bean);// end of insert

	void update(NewsBean bean);//end update

	NewsBean findOne(Long seqno);

	List<NewsBean> findAll();

	void delete(Long seqno);

}