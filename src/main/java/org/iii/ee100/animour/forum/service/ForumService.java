package org.iii.ee100.animour.forum.service;

import java.util.ArrayList;
import java.util.List;

import org.iii.ee100.animour.forum.dao.ArticleDao;
import org.iii.ee100.animour.forum.dao.ArticleDao;
import org.iii.ee100.animour.forum.entity.Article;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ForumService {
	
	@Autowired
	private ArticleDao articleDao;
	
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
