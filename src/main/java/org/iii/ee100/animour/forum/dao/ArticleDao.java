package org.iii.ee100.animour.forum.dao;

import java.util.List;

import org.iii.ee100.animour.common.dao.GenericDao;
import org.iii.ee100.animour.forum.entity.Article;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Repository;

@Repository
public interface ArticleDao extends GenericDao<Article> {

	// FROM Article ORDER BY PostTime DESC FETCH FIRST 3 ROWS ONLY
	List<Article> findTop3ByOrderByPostTimeDesc();

	// FROM Article ORDER BY UpdateTime DESC FETCH FIRST 4 ROWS ONLY
	List<Article> findTop4ByOrderByClickDesc();

	List<Article> findBySubjectContaining(String subject);

	Page<Article> findBySubjectContaining(String subject, Pageable pageable);

	List<Article> findByCategoryId(Long categoryId);

	Page<Article> findByCategoryId(Long categoryId, Pageable pageable);
}
