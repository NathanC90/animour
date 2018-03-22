package org.iii.ee100.animour.news.service;

import java.util.List;

import org.iii.ee100.animour.news.entity.NewsBean;

public interface NewsService {

	void insert(NewsBean bean);

	void update(NewsBean bean);

	void delete(Long seqno);

	List<NewsBean> getAll();

	NewsBean getOne(Long seqno);

}