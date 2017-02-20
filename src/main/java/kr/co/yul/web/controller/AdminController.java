package kr.co.yul.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping("/admin")
public class AdminController {

	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);


	@RequestMapping("/userMgrCard")
	public ModelAndView showCardView() {

		logger.debug("show root view");

		ModelAndView mav = new ModelAndView("admin/account/accountCard");
		return mav;
	}
	
	@RequestMapping("/userMgrList")
	public ModelAndView showListView() {
		
		logger.debug("show root view");
		
		ModelAndView mav = new ModelAndView("admin/account/accountList");
		return mav;
	}
	
	
	@RequestMapping("/reqEpList")
	public ModelAndView showReqEpListView() {
		
		logger.debug("show root view");
		
		ModelAndView mav = new ModelAndView("admin/request/reqEpList");
		return mav;
	}
	
	@RequestMapping("/reqEpCard")
	public ModelAndView showReqEpCardView() {
		
		logger.debug("show root view");
		
		ModelAndView mav = new ModelAndView("admin/request/reqEpCard");
		return mav;
	}
}
