package org.iii.ee100.animour.forum.dao;

import org.iii.ee100.animour.forum.entity.Article;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
@Repository
public interface ArticleDao extends CrudRepository<Article, Long>{

}
