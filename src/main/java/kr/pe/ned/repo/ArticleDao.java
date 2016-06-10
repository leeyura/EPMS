package kr.pe.ned.repo;

import java.util.List;

import kr.pe.ned.data.Article;

public interface ArticleDao {

	List<Article> selectArticles();

}
