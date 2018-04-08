package org.iii.ee100.animour.forum.dao;

import java.util.List;

import org.iii.ee100.animour.forum.entity.Comment;
import org.springframework.data.repository.CrudRepository;

public interface CommentDao extends CrudRepository<Comment, Long> {
	List<Comment> findByArticleId(Long id);
}
