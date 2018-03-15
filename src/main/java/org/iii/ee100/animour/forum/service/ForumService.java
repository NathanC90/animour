package org.iii.ee100.animour.forum.service;

import java.util.ArrayList;
import java.util.List;

import org.iii.ee100.animour.forum.entity.Article;
import org.iii.ee100.animour.home.entity.Animal;

public interface ForumService {

	public void insert(Article article);

	public void update(Article article);

	public void delete(Long id);

	public ArrayList<Article> getAll();

	public Article getOne(Long id);
}
