package kr.co.yul.web.controller;

import java.awt.Image;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.co.yul.data.ProductVO;
import kr.co.yul.repo.ProductDao;
import kr.co.yul.utils.PagingUtil;

@Controller
@RequestMapping("/product")
public class ProductController {

	@Autowired
	private ProductDao dao;
	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);
	private static final String filePath = "C:\\dev\\products";
	
	@RequestMapping("/list")
	public ModelAndView productList(HttpServletRequest req, HttpServletResponse res, HttpSession session) throws SQLException {
		ModelAndView mav = null;
		List<ProductVO> productList = null;
		String currentPage = (String) req.getParameter("page");
		String type="";
		String name="";
		if(req.getParameter("type") != null){
			type = req.getParameter("type");
		}
		if(req.getParameter("name") != null){
			name = req.getParameter("name");
		}
		productList = getProductList(req,  currentPage);
		
		if(session.getAttribute("id")== null){
			mav = goLogin();
		}else{
			// 비품 목록 조회해오기.
				mav = new ModelAndView("product/productList");
				mav.addObject("viewType", "LIST");
				mav.addObject("type", type);
				mav.addObject("name", name);
				mav.addObject("userInfo", session);
				mav.addObject("productList", productList);
				mav.addObject("pageLimit", getPaging(currentPage, type, name).get("pageLimit"));
				mav.addObject("totalPage", getPaging(currentPage, type, name).get("totalPage"));
				mav.addObject("currentPage", getPaging(currentPage,type, name).get("page"));
				mav.addObject("defaultPageLimit", getPaging(currentPage, type, name).get("defaultPageLimit"));
				mav.addObject("startPage", getPaging(currentPage, type, name).get("startPage")); 
			
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
				mav.addObject("viewType", "CARD");
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
	
	@RequestMapping(value="/addProduct", method=RequestMethod.POST)
	public ModelAndView addNewProduct(HttpServletRequest req, HttpServletResponse res, HttpSession session, 
																		@RequestParam String epType, @RequestParam String epName, @RequestParam String viewType,
																		@RequestParam String epPrice , @RequestParam("file")MultipartFile file) throws Exception {
		ModelAndView mav =  null;
		ProductVO productVo = new ProductVO();
			
			if(epType !=null && epName != null && epPrice !=null){
				productVo.setEpType(epType);
				productVo.setEpNm(epName);
				productVo.setEpPrice(Integer.parseInt(epPrice));
				productVo.setEpType(epType);
				productVo.setEpIstMemId(Integer.parseInt(session.getAttribute("id").toString()));
				productVo.setEpUstMemId(Integer.parseInt(session.getAttribute("id").toString()));
			}
			if(viewType.equals("LIST")){
				 mav =  new ModelAndView("redirect:/product/list");
			}else{
				 mav =  new ModelAndView("redirect:/product/card");
			}
			try {
				dao.addNewProduct(productVo, req);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return mav;
	}

	@RequestMapping(value="/editProduct", method=RequestMethod.POST)
	public ModelAndView editProducts(HttpServletRequest req, HttpSession session,
			                                                     @RequestParam String epType, @RequestParam String epId, @RequestParam String epPrice, @RequestParam String epName, @RequestParam String viewType,
			                                                     @RequestParam ("file")MultipartFile file, @RequestParam String fileId, @RequestParam String editFileNm) throws Exception{
		ModelAndView mav =  null;
		
		ProductVO vo = new ProductVO();

		vo.setEpId(Integer.parseInt(epId));
		vo.setEpType(epType);
		vo.setEpNm(epName);
		vo.setEpPrice(Integer.parseInt(epPrice));
		vo.setEpUstMemId(Integer.parseInt(session.getAttribute("id").toString()));
		if(!fileId.equals("")){
			vo.setFileId(Integer.parseInt(fileId));
		}else{
			vo.setFileId(0);
		}
		vo.setRealNm(editFileNm);
		
		if(viewType.equals("LIST")){
			 mav =  new ModelAndView("redirect:/product/list");
		}else{
			 mav =  new ModelAndView("redirect:/product/card");
		}
		
		try {
			dao.editProduct(vo, req);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return mav;
	}

	@ResponseBody
	@RequestMapping(value="/editProduct", method=RequestMethod.GET)
	public ProductVO editProducts(HttpServletRequest req, HttpServletResponse res, HttpSession session,@RequestParam String epId) throws NumberFormatException, SQLException {
		ProductVO vo = new ProductVO();
		if(session.getAttribute("id")== null){
			vo = null;
			goLogin();
		}else{
			// epId 로 조회해서 epTpye, epPrice, epNm, etc, fileId가져오기
			vo = dao.getProductInfo(Integer.parseInt(epId));
		}
		return vo;
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
	
	public List<ProductVO> getProductList(HttpServletRequest req, String page) throws SQLException{
		List<ProductVO> productList = null;
		Map<String, Object>map = new HashMap<String, Object>();
		
		String type = "";
		String name = "";
		int currentPage = 1;
		int limit = 10;
		int startIndex = 0;

		if(page != null){
			currentPage = Integer.parseInt(page);
		}
		startIndex = PagingUtil.startIndex(currentPage, limit);
		
		
		
		if(startIndex!= 0){
			limit = startIndex + limit;
			startIndex +=1;
		}
		
		if(req.getParameter("type") != null){
			type = req.getParameter("type");
		}
		if(req.getParameter("name") != null){
			name = req.getParameter("name");
		}
		map.put("type",type);
		map.put("name",name);
		map.put ("limit", limit);
		map.put ("startIndex", startIndex);
		
		/*AND A.RN >= ${startIndex}0
	       AND #{limit} >= A.RN*/
		
		productList = dao.getProductsList(map);
		
		return productList;
	}
	
	/**
	 * paging에 필요한 요소를 Map에 담음.
	 */
	public Map<String, Integer> getPaging(String page, String type, String name) throws SQLException{
		 Map<String, Integer>paging = new HashMap<String, Integer>();
		 PagingUtil PagingUtils = new PagingUtil();
		 Map<String, String> map = new HashMap<>();
		 int totalCnt =0;
		 int limit =10;
		 int startPage = 0;
		 int totalPage = 0;
		 int defaultPageLimit = 10;
		 int pageLimit = 0;
		 int currentPage = 1;
		 
			if(page != null){
				currentPage = Integer.parseInt(page);
			}
		 map.put("type", type);
		 map.put("name", name);
		 totalCnt = dao.getEpTotalCnt(map); 
		 totalPage = PagingUtils.calculateTotalPage(limit, totalCnt);
	 	 startPage = PagingUtils.startPage(currentPage, defaultPageLimit);
	  	 pageLimit = PagingUtils.pageLimit(defaultPageLimit, totalPage, startPage);
	  	 paging.put("pageLimit", pageLimit);
	  	 paging.put("totalPage", totalPage);
	  	 paging.put("page", currentPage);
	  	 paging.put("defaultPageLimit", defaultPageLimit);
	  	 paging.put("startPage", startPage);
    	 
		 return paging;
	}
	
}
