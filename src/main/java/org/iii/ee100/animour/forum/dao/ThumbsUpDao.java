package org.iii.ee100.animour.forum.dao;

import java.util.List;

import org.iii.ee100.animour.common.dao.GenericDao;
import org.iii.ee100.animour.forum.entity.ThumbsUp;
import org.springframework.stereotype.Repository;

@Repository
public interface ThumbsUpDao extends GenericDao<ThumbsUp> {
	List<ThumbsUp> findByMemberIdAndArticleId(Long memberId, Long articleId);
}

