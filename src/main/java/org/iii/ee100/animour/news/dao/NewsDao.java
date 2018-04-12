package org.iii.ee100.animour.news.dao;


import java.util.List;

import org.iii.ee100.animour.news.entity.News;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

public interface NewsDao extends JpaRepository<News, Long>{
	//SELECT seqno, subject, content, updateTime FROM news ORDER BY seqno desc fetch first 6 rows only";
	Page<News> findTop6ByOrderBySeqnoDesc(Pageable pageable);
	//SELECT seqno, subject, content, updateTime FROM news ORDER BY seqno desc fetch first 6 rows only";
	List<News> findTop6ByOrderByEventDateDesc();
	

}
