package kr.co.yul.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.yul.data.Rsps;
import kr.co.yul.repo.RspsDao;

@Controller
@RequestMapping("rsps")
public class RspsController {

	@Autowired
	RspsDao dao ;
	
	@RequestMapping("/view")
	public ModelAndView rspsView(){
		ModelAndView mav =   new ModelAndView("rsps/view");
		List<Rsps> list = dao.selectRsps();
		Rsps vo =  new Rsps();
		
		mav.addObject("list", list);
		return mav;
	}
	@RequestMapping("/schedule")
	public ModelAndView schduleView(){
		return new ModelAndView("rsps/schedule");
	}
}
