package org.iii.ee100.animour.news.dao;


import org.iii.ee100.animour.news.entity.News;
import org.springframework.data.repository.CrudRepository;

public interface NewsDao extends CrudRepository<News, Long>{

}
