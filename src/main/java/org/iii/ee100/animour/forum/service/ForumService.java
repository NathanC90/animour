package org.iii.ee100.animour.forum.service;

import java.util.ArrayList;
import java.util.List;

import org.iii.ee100.animour.forum.dao.ArticleDao;
import org.iii.ee100.animour.forum.dao.ArticleDao;
import org.iii.ee100.animour.forum.entity.Article;
import org.springframework.stereotype.Service;

@Service
public class ForumService {
	private ArticleDao articleDao;
	// AnimalDaoImpl dao = null;

	public ForumService() throws InstantiationException, IllegalAccessException, ClassNotFoundException {
		// file. IO get aniamlDao impl ?
		String daoImplName = "org.iii.ee100.animour.forum.dao.ArticleDaoImpl";

		articleDao = (org.iii.ee100.animour.forum.dao.ArticleDao) Class.forName(daoImplName).newInstance();

	}

	public void insert(Article article) {
		articleDao.insert(article);

	}

	public void update(Article article) {
		articleDao.update(article);

	}

	public void delete(Long id) {
		articleDao.delete(id);

	}

	public ArrayList<Article> getAll() {
		return articleDao.findAll();
	}

	public Article getOne(Long id) {
		return articleDao.findOne(id);
	}

	public ArrayList<Article> getNew() {
		org.iii.ee100.animour.forum.dao.ArticleDao articleDao1 = new ArticleDao();
		return articleDao1.findNew();
	}

}
