package kr.co.yul.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/apply")
public class ApplyController {

	private static final Logger logger = LoggerFactory.getLogger(ApplyController.class);
	
	@RequestMapping("/list")
	public ModelAndView applyList() {
		ModelAndView mav = new ModelAndView("apply/applyList");
		return mav;
	}
	
	@RequestMapping("/view")
	public ModelAndView applyView() {
		ModelAndView mav = new ModelAndView("apply/applyView");
		return mav;
	}
	
	@RequestMapping("/addApply")
	public ModelAndView addApplyForm() {
		ModelAndView mav = new ModelAndView("apply/addApply");
		return mav;
	}
}
