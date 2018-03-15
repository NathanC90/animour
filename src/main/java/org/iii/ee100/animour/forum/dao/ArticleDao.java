package org.iii.ee100.animour.forum.dao;

import java.util.ArrayList;

import org.iii.ee100.animour.forum.entity.Article;

public interface ArticleDao {

	void insert(Article article);

	void update(Article article);

	void delete(Long articleId);

	ArrayList<Article> findAll();

	Article findOne(Long articleId);

}