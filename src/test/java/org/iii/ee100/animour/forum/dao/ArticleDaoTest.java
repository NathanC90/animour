package org.iii.ee100.animour.forum.dao;

import org.iii.ee100.animour.forum.entity.Article;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class ArticleDaoTest {
 @Autowired
 private ArticleDao articleDao;
	@Test
	public void testFindAll() {
		Iterable<Article> articles = articleDao.findAll();
		
		for(Article ar:articles) {
			System.out.println(ar);
		}
	}

}
