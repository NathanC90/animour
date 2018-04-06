package org.iii.ee100.animour.forum.service;

import java.util.List;

import org.assertj.core.util.Lists;
import org.iii.ee100.animour.forum.dao.ArticleDao;
import org.iii.ee100.animour.forum.entity.Article;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ForumService {
	
	@Autowired
	private ArticleDao articleDao;
	
	public void insert(Article article) {
		articleDao.save(article);

	}

	public void update(Article article) {
		articleDao.save(article);

	}

	public void delete(Long id) {
		articleDao.delete(id);

	}

	public List<Article> getAll() {
		return Lists.newArrayList(articleDao.findAll());
	}

	public Article getOne(Long id) {
		return articleDao.findOne(id);
	}

	public List<Article> getNewPostThree() {
		return articleDao.findTop3ByOrderByPostTimeDesc();
	}

	public List<Article> getNewUpdateFour() {
		return articleDao.findTop4ByOrderByUpdateTimeDesc();
	}
}
