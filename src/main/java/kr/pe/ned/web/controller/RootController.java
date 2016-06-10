package kr.pe.ned.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping("/")
public class RootController {

	private static final Logger logger = LoggerFactory.getLogger(RootController.class);


	@RequestMapping
	public ModelAndView showRootView() {

		logger.debug("show root view");

		ModelAndView mav = new ModelAndView("root");
		return mav;
	}

	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String showLoginView() {
		return "login";
	}

}
