package kr.pe.ned.repo;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.pe.ned.data.Article;

@Repository
public class ArticleDaoImpl implements ArticleDao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;


	@Override
	public List<Article> selectArticles() {
		List<Article> results = sqlSessionTemplate.selectList("article.selectArticles");
		return results;
	}

}
