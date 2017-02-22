package kr.co.yul.web.controller;

import java.awt.Image;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.co.yul.data.ProductVO;
import kr.co.yul.repo.ProductDao;

@Controller
@RequestMapping("/product")
public class ProductController {

	@Autowired
	private ProductDao dao;
	
	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);
	private static final String filePath = "C:\\dev\\products";
	
	
	@RequestMapping("/list")
	public ModelAndView productList(HttpServletRequest req, HttpServletResponse res, HttpSession session) {
		ModelAndView mav = null;
		List<ProductVO> productList = null;
		Map<String, String>map = new HashMap<String, String>();
		String type = "";
		String name = "";
		if(req.getParameter("type") != null){
			type = req.getParameter("type");
		}
		if(req.getParameter("name") != null){
			name = req.getParameter("name");
		}
		map.put("type",type);
		map.put("name",name);
		
		if(session.getAttribute("id")== null){
			mav = goLogin();
		}else{
			// 비품 목록 조회해오기.
			try {
				productList = dao.getProductsList(map);
				mav = new ModelAndView("product/productList");
				mav.addObject("type", type);
				mav.addObject("name", name);
				mav.addObject("userInfo", session);
				mav.addObject("productList", productList);
			} catch (SQLException e) {
				mav = goLogin();
				e.printStackTrace();
			}
		}
		return mav;
	}
	
	@RequestMapping("/card")
	public ModelAndView productCard(HttpServletRequest req, HttpServletResponse res, HttpSession session) {
		ModelAndView mav = null;
		List<ProductVO> productList = null;
		Map<String, Object>map = new HashMap<String, Object>();
		String type = "";
		String name = "";
		if(req.getParameter("type") != null){
			type = req.getParameter("type");
		}
		if(req.getParameter("name") != null){
			name = req.getParameter("name");
		}
		map.put("type",type);
		map.put("name",name);
		
		if(session.getAttribute("id")== null){
			mav = goLogin();
		}else{
			try {
				productList = dao.getProductsCard(map);
				
				mav = new ModelAndView("product/productCard");
				mav.addObject("type", type);
				mav.addObject("name", name);
				mav.addObject("userInfo", session);
				mav.addObject("productList", productList);
			} catch (SQLException e) {
				mav = goLogin();
				e.printStackTrace();
			}
		}
		return mav;
	}
	@RequestMapping("/view")
	public ModelAndView productView() {
		ModelAndView mav = new ModelAndView("product/productView");
		return mav;
	}

	@RequestMapping("/img")
	public void getFileInfo(HttpServletRequest req, HttpServletResponse res) throws IOException {
		Image img = null;
		int fileId = Integer.parseInt(req.getParameter("fileId"));
		ProductVO vo = new ProductVO();
		try {
			vo = dao.getFileInfo(fileId);

			String path = vo.getFilePath();
			String nm = vo.getRealNm();
			File file = new File(path + "\\" + nm);
			
			InputStream in = new FileInputStream(file.getPath());
			
			res.setContentType("image/jpeg");
			IOUtils.copyLarge(in, res.getOutputStream());
			
			try {
				img = ImageIO.read(file);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//epId=0, fileId=1,realNm=HOT.jpg, filePath=D:\workspace\DAIMS_EPMS\src\main\webapp\images\products
	
@RequestMapping(value="/addProduct")
	public ModelAndView addNewProduct(HttpServletRequest req, HttpServletResponse res, HttpSession session, 
																		@RequestParam String epType, @RequestParam String epName, @RequestParam String epPrice , 
			                                                            @RequestParam String epEtc, @RequestParam("file")MultipartFile file) throws Exception {
	ModelAndView mav =  new ModelAndView("redirect:/product/list");

	ProductVO productVo = new ProductVO();
		
		if(epType !=null && epName != null && epPrice !=null){
			productVo.setEpType(epType);
			productVo.setEpNm(epName);
			productVo.setEpPrice(Integer.parseInt(epPrice));
			productVo.setEpType(epType);
			productVo.setEpIstMemId(Integer.parseInt(session.getAttribute("id").toString()));
			productVo.setEpUstMemId(Integer.parseInt(session.getAttribute("id").toString()));
		}
	
		try {
			dao.addNewProduct(productVo, req);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return mav;
	}


	@ResponseBody
	@RequestMapping("/deleteProduct")
	public String deleteProduct(HttpServletRequest req, HttpServletResponse res, HttpSession session,@RequestParam String epId) {
		String result = "";
		Map<String, Object> map = new HashMap<String, Object>();
		if(session.getAttribute("id")== null){
			result = "0";
		}else{
			map.put("memId", session.getAttribute("id"));
			map.put("epId", epId);
			try {
				dao.deleteProduct(map);
				result = "1";
			} catch (SQLException e) {
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
