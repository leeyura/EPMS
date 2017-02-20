package kr.co.yul.web.controller;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.yul.data.MemberVO;
import kr.co.yul.repo.MemberDao;


@Controller
@RequestMapping("/")
public class RootController {

	@Autowired
	private MemberDao dao;
	
	private static final Logger logger = LoggerFactory.getLogger(RootController.class);


	@RequestMapping
	public ModelAndView showRootView() {
		ModelAndView mav = new ModelAndView("login/login");
		return mav;
	}
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public ModelAndView showLoginView() {
		ModelAndView mav = new ModelAndView("login/login");
		mav.addObject("noLogin", "로그인 후 이용해주세요");
		return mav;
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public ModelAndView loginCheck(HttpServletRequest req, HttpServletResponse res, HttpSession session, 
			 													@RequestParam String memEmail, @RequestParam String memPwd) throws UnsupportedEncodingException{
		ModelAndView mav = new ModelAndView();
		MemberVO vo =  new MemberVO();
		vo.setMemEmail(memEmail);
		vo.setMemPwd(getSHAPassword(memPwd));
		
		int cnt = 0;
		try {
			cnt = dao.checkEmailUse(vo);
		} catch (SQLException e) {
			// TODO 예외처리
			e.printStackTrace();
		}
		if(cnt > 0){
			try {
				vo = dao.getMemberInfo(memEmail);
			} catch (SQLException e) {
				// TODO 예외처리
				e.printStackTrace();
			}
			session.setAttribute("id", vo.getMemId());
			session.setAttribute("email", vo.getMemEmail());
			session.setAttribute("nm", vo.getMemNm());
			session.setAttribute("level", vo.getMemGrade());
			
			
			mav.addObject("userInfo", session);
			mav.setViewName("apply/applyList");
			
		}else{
			mav.setViewName("login/register");
			mav.addObject("empty", "가입 후 이용해 주세요.");
		}
		return mav;
	}
	
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public ModelAndView showRegisterView() {
		ModelAndView mav = new ModelAndView("login/register");
		return mav;
	}
	
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public ModelAndView registerEPMS(HttpServletRequest req, HttpServletResponse res,
																	@RequestParam String memName, @RequestParam String memEmail, @RequestParam String memPwd) throws UnsupportedEncodingException {
		ModelAndView mav = new ModelAndView();
		
		if(memName !=null && memEmail !=null && memPwd !=null){
			MemberVO vo =  new MemberVO();
			vo.setMemEmail(memEmail);
			vo.setMemNm(memName);
			vo.setMemPwd(getSHAPassword(memPwd));
			
			try {
				dao.resisterMember(vo);
			} catch (SQLException e) {
				// TODO 예외처리
				e.printStackTrace();
			}
			mav.setViewName("login/login");
			mav.addObject("msg", "가입을 축하합니다.");
		}else{
			mav.setViewName("login/register");
		}
		return mav;
	}

	public String getSHAPassword(String memPwd) throws UnsupportedEncodingException{
		
		String changePwd = "";
		try {
			MessageDigest digset = MessageDigest.getInstance("SHA-256");
			byte[] bt = digset.digest(memPwd.getBytes("UTF-8"));
			StringBuffer sb = new StringBuffer();

			for (int i = 0; i < bt.length; i++) {
				String code = Integer.toHexString(0xff & bt[i]);
				if(code.length()==1) sb.append('0');
				sb.append(code);
			}
			changePwd = sb.toString();
			
		} catch (NoSuchAlgorithmException e) {
			//TODO 예외처리하기
			e.printStackTrace();
		}
		return changePwd;
	}
	
	
	
}
