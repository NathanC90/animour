package org.iii.ee100.animour.news.service;

import java.util.List;

import org.iii.ee100.animour.news.entity.NewsBean;
import org.iii.ee100.animour.shopping.entity.ProductBean;
import org.springframework.stereotype.Service;

@Service
public class NewsServiceImpl implements NewsService{
		
  private org.iii.ee100.animour.news.dao.NewsDao newsDao;
	
	
	public NewsServiceImpl() throws InstantiationException, IllegalAccessException, ClassNotFoundException {

		String daoImplName = "org.iii.ee100.animour.news.dao.NewsDaoImpl";
		newsDao = (org.iii.ee100.animour.news.dao.NewsDao) Class.forName(daoImplName).newInstance();
	}
	
	
	@Override
	public void insert(NewsBean bean) {
		newsDao.insert(bean);
	}
	
	
	@Override
	public void update(NewsBean bean) {
		newsDao.update(bean);
	}

	
	@Override
	public void delete(Long seqno) {
		newsDao.delete(seqno);
	}

	
	@Override
	public List<NewsBean> getAll() {
		return newsDao.findAll();
	}

	
	@Override
	public NewsBean getOne(Long seqno) {
		return newsDao.findOne(seqno);
	}
}
