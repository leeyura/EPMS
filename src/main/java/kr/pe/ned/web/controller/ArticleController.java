package kr.pe.ned.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.pe.ned.data.Article;
import kr.pe.ned.repo.ArticleDao;

@Controller
@RequestMapping("article")
public class ArticleController {


	@Autowired
	private ArticleDao articleDao;

	@RequestMapping
	public ModelAndView findArticles() {

		List<Article> articles = articleDao.selectArticles();

		ModelAndView mav = new ModelAndView("article/article_list");
		mav.addObject("articles", articles);

		return mav;
	}

}
