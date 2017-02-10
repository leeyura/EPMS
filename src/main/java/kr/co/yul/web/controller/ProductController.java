package kr.co.yul.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/product")
public class ProductController {

	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);
	
	@RequestMapping("/list")
	public ModelAndView productList() {

		logger.debug("show root view");

		ModelAndView mav = new ModelAndView("product/productList");
		return mav;
	}
	@RequestMapping("/applyList")
	public ModelAndView applyProductList() {
		
		logger.debug("show root view");
		
		ModelAndView mav = new ModelAndView("product/applyList");
		return mav;
	}
}
