package kr.co.yul.web.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.RequiredAnnotationBeanPostProcessor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.yul.data.ApplyVO;
import kr.co.yul.repo.ReqDao;


@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	private ReqDao dao;
	
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
	public ModelAndView showReqEpListView(HttpSession session, HttpServletRequest req, HttpServletResponse res) throws SQLException {
		ModelAndView mav = null;
		Map<String, String> map = new HashMap<String, String>();
		List<ApplyVO> reqList = new ArrayList<ApplyVO>();
		
		String mt = "";
		String state = "";
		if(req.getParameter("mt") != null){
			 mt = req.getParameter("mt");
		}
		if(req.getParameter("state") != null){
			state = req.getParameter("state");
		}
		map.put("mt",mt);
		map.put("state",state);
		
		if(session.getAttribute("id") == null){
			mav =  new ModelAndView("redirect:/login");
		}else{
			 reqList = dao.getReqList(map);
			 mav = new ModelAndView("admin/request/reqEpList");
			mav.addObject("userInfo", session);
			mav.addObject("reqList", reqList);
			mav.addObject("mt", mt);
			mav.addObject("state", state);
		}
		return mav;
	}
	
	@RequestMapping("/reqEpCard")
	public ModelAndView showReqEpCardView(HttpSession session, HttpServletRequest req, HttpServletResponse res) throws SQLException {
		ModelAndView mav = null;
		Map<String, String> map = new HashMap<String, String>();
		List<ApplyVO> reqList = new ArrayList<ApplyVO>();
		
		String mt = "";
		String state = "";
		if(req.getParameter("mt") != null){
			 mt = req.getParameter("mt");
		}
		if(req.getParameter("state") != null){
			state = req.getParameter("state");
		}
		map.put("mt",mt);
		map.put("state",state);
		
		if(session.getAttribute("id") == null){
			mav =  new ModelAndView("redirect:/login");
		}else{
			 reqList = dao.getReqList(map);
			 mav = new ModelAndView("admin/request/reqEpCard");
			mav.addObject("userInfo", session);
			mav.addObject("reqList", reqList);
			mav.addObject("mt", mt);
			mav.addObject("state", state);
		}
		return mav;
	}
	
	@ResponseBody
	@RequestMapping("/changeState")
	public String changeReqState(HttpServletRequest req, HttpSession session, 
			 											@RequestParam String epId, @RequestParam String changeState, @RequestParam String cause) throws SQLException{
			Map<String , Object> map = new HashMap<String, Object>();
			String result = "";
			int cnt = 0;
			if(epId != null && changeState != null){
				map.put("epId", epId);
				map.put("changeState", changeState);
			}
			if(cause != null && cause !=""){
				map.put("cause", cause);
			}
			cnt = dao.changeState(map);
			if(cnt >0){
				result = "1";
			}else{
				result = "0";
			}
		return result;
	}
}
