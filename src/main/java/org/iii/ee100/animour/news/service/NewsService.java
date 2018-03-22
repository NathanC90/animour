package org.iii.ee100.animour.news.service;

import java.util.List;

import org.iii.ee100.animour.news.entity.NewsBean;
import org.iii.ee100.animour.shopping.entity.Product;
import org.springframework.stereotype.Service;

@Service
public class NewsService{
		
  private org.iii.ee100.animour.news.dao.NewsDao newsDao;
	
	
	public NewsService() throws InstantiationException, IllegalAccessException, ClassNotFoundException {

	}
	
	
	
	public void insert(NewsBean bean) {
		newsDao.insert(bean);
	}
	
	
	
	public void update(NewsBean bean) {
		newsDao.update(bean);
	}

	
	
	public void delete(Long seqno) {
		newsDao.delete(seqno);
	}

	
	
	public List<NewsBean> getAll() {
		return newsDao.findAll();
	}

	
	
	public NewsBean getOne(Long seqno) {
		return newsDao.findOne(seqno);
	}
}
