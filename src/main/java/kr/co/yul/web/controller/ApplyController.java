package kr.co.yul.web.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.omg.CORBA.MARSHAL;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.yul.data.ApplyVO;
import kr.co.yul.data.ProductVO;
import kr.co.yul.repo.ApplyDao;

@Controller
@RequestMapping("/apply")
public class ApplyController {

	@Autowired
	private ApplyDao dao;
	
	private static final Logger logger = LoggerFactory.getLogger(ApplyController.class);
	
	@RequestMapping("/list")
	public ModelAndView applyList(HttpSession session, HttpServletRequest req) {
		ModelAndView mav = null;
		Map<String, String> map = new HashMap<String, String>();
		
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
		
		List<ApplyVO> applyList = new ArrayList<ApplyVO>();
		if(session.getAttribute("id")== null){
			mav = goLogin();
		}else{
			try {
				applyList = dao.getApplyList(map);
				mav = new ModelAndView("apply/applyList");
				mav.addObject("userInfo", session);
				mav.addObject("applyList", applyList);
				mav.addObject("mt", mt );
				mav.addObject("state", state);
			} catch (SQLException e) {
				mav = goLogin();
				e.printStackTrace();
			}
		}
		return mav;
	}
	
	@RequestMapping("/view")
	public ModelAndView applyView() {
		ModelAndView mav = new ModelAndView("apply/applyView");
		return mav;
	}
	
	@RequestMapping(value="/addApply", method=RequestMethod.GET)
	public ModelAndView addApplyForm(HttpSession session, HttpServletRequest req, HttpServletResponse res) {
		ModelAndView mav = null;
		if(session.getAttribute("id")== null){
			mav = goLogin();
		}else{
			mav = new ModelAndView("apply/addApply");
			mav.addObject("userInfo", session);
		}
		return mav;
	}
	
	@ResponseBody
	@RequestMapping("/getProduct")
	public List<ProductVO> findProductList(@RequestParam String type) throws SQLException{
		List<ProductVO> list = new ArrayList<ProductVO>();
		if(type != null && type != ""){
			list = dao.getproductNmList(type);
		}
		return list;
	}
	
	@ResponseBody
	@RequestMapping("/checkProduct")
	public String checkProducts(@RequestParam int epId, String mt) throws SQLException{
		String result = "";
		int cnt =0;
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("epId", epId);
		map.put("mt", mt);
		cnt = dao.checkApply(map);
		if(cnt > 0){
			result = "no";
		}else{
			result = "able";
		}
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value="/addApply", method=RequestMethod.POST)
	public String addApplies(HttpSession session, @RequestParam String type, @RequestParam String epId,
			                                     @RequestParam String epCnt, @RequestParam String price){
		
		ApplyVO vo = new ApplyVO();
		String result = "";
		if(session.getAttribute("id")== null){
			result = "no";
		}else{
			vo.setEpId(Integer.parseInt(epId));
			vo.setMemId(Integer.parseInt(session.getAttribute("id").toString()));
			vo.setEpCnt(Integer.parseInt(epCnt));
			vo.setEpTtPrice(Integer.parseInt(epCnt)*Integer.parseInt(price));
			
			try {
				dao.addApply(vo);
				result = "ok";
			} catch (SQLException e) {
				result = "no";
				e.printStackTrace();
			}
		}
		return result;
	}
	
	@ResponseBody
	@RequestMapping("/cancelApply")
	public String cancelApplies(HttpServletRequest req, HttpServletResponse res, HttpSession session,@RequestParam String epId) {
		
		String result = "";
		Map<String, Object> map = new HashMap<String, Object>();
		if(session.getAttribute("id")== null){
			result = "0";
		}else{
			map.put("memId", session.getAttribute("id"));
			map.put("epId", epId);
			try {
				dao.cancelApply(map);
				result = "1";
			} catch (SQLException e) {
				e.printStackTrace();
			}
			result = "1";
		}
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value ="/editApply", method=RequestMethod.GET)
	public ApplyVO editApplyInfo(@RequestParam String epId , @RequestParam String insertDt,  HttpSession session) throws NumberFormatException, SQLException{
		ApplyVO vo = new ApplyVO();
		Map<String,Integer> map = new HashMap<String,Integer>();
		if(session.getAttribute("id") == null){
			vo = null;
		}else{
			map.put("epId", Integer.parseInt(epId));
			map.put("insertDt", Integer.parseInt(insertDt));
			vo = dao.getApplyInfo(map);
		}
		return vo ;
	}
	
	@ResponseBody
	@RequestMapping(value ="/editApply", method=RequestMethod.POST)
	public String editApply( HttpSession session , @RequestParam String epId,
			                                      @RequestParam String epCnt, @RequestParam String price, @RequestParam String insertDt ) throws NumberFormatException, SQLException{
		Map<String,Integer> map = new HashMap<String,Integer>();
		
		String result = "";
		if(session.getAttribute("id")== null){
			result = "no";
		}else{
			
			map.put("epId", Integer.parseInt(epId));
			map.put("epCnt", Integer.parseInt(epCnt));
			map.put("epTtPrice", Integer.parseInt(epCnt)*Integer.parseInt(price));
			map.put("memUdtId", Integer.parseInt(session.getAttribute("id").toString()));
			map.put("insertDt", Integer.parseInt(insertDt));
			
			try {
				dao.editApply(map);
				result = "ok";
			} catch (SQLException e) {
				result = "no";
				e.printStackTrace();
			}
		}
		return result;
	}

	public ModelAndView goLogin(){
		ModelAndView mav = new ModelAndView("redirect:/login");
		return mav;
	}
}
