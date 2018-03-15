package org.iii.ee100.animour.forum.service;

import java.util.ArrayList;
import java.util.List;

import org.iii.ee100.animour.forum.dao.ArticleDao;
import org.iii.ee100.animour.forum.entity.Article;
import org.springframework.stereotype.Service;

@Service
public class ForumServiceImpl implements ForumService {
	private ArticleDao articleDao;
	//AnimalDaoImpl dao = null;
	
	public ForumServiceImpl() throws InstantiationException, IllegalAccessException, ClassNotFoundException  {
		//file. IO get aniamlDao impl ?
		String daoImplName = "org.iii.ee100.animour.forum.dao.ArticleDaoImpl";
		articleDao = (org.iii.ee100.animour.forum.dao.ArticleDao) Class.forName(daoImplName).newInstance();
	}
	@Override
	public void insert(Article article) {
		articleDao.insert(article);

	}

	@Override
	public void update(Article article) {
		articleDao.update(article);

	}

	@Override
	public void delete(Long id) {
		articleDao.delete(id);

	}

	@Override
	public ArrayList<Article> getAll() {
		return articleDao.findAll();
	}

	@Override
	public Article getOne(Long id) {
		return articleDao.findOne(id);
	}

}
