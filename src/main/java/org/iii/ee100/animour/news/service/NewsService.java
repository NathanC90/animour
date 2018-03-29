package org.iii.ee100.animour.news.service;

import java.util.List;

import org.iii.ee100.animour.news.dao.NewsDao;
import org.iii.ee100.animour.news.entity.News;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NewsService{
	@Autowired
	private NewsDao newsDao;
		
	
	
	
	public void insert(News bean) {
		newsDao.insert(bean);
	}
	
	
	
	public void update(News bean) {
		newsDao.update(bean);
	}

	
	
	public void delete(Long seqno) {
		newsDao.delete(seqno);
	}

	
	
	public List<News> getAll() {
		return newsDao.findAll();
	}

	
	
	public News getOne(Long seqno) {
		return newsDao.findOne(seqno);
	}
}
