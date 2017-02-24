package kr.co.yul.repo;

import java.io.File;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import kr.co.yul.data.ProductVO;
import kr.co.yul.utils.FileUtils;

@Repository
public class ProductDaompl implements ProductDao{

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public ProductVO getFileInfo(int fileId) throws SQLException {
		ProductVO vo = new ProductVO();
		vo = sqlSessionTemplate.selectOne("product.getFileInfo", fileId);
		return vo;
	}


	@Override
	public List<ProductVO> getProductsList(Map<String, Object> map) throws SQLException {
		List<ProductVO> list = null;
		list = sqlSessionTemplate.selectList("product.getEpList", map);
		return list;
	}
	
	
	@Override
	public int getEpTotalCnt(Map<String, String> map) throws SQLException {
		int cnt = 0;
		cnt = sqlSessionTemplate.selectOne("product.getEpTotalCnt",map);
		return cnt;
	}


	@Override
	public List<ProductVO> getProductsCard(Map<String, Object> map) throws SQLException {
		List<ProductVO> list = null;
		list = sqlSessionTemplate.selectList("product.getEpCard", map);
		return list;
	}

	@Transactional(rollbackFor={SQLException.class})
	@Override
	public int addNewProduct(ProductVO vo, HttpServletRequest req) throws Exception {
		Map<String,Object>map = new HashMap<String,Object>();
		FileUtils fileUtils = new FileUtils();

		sqlSessionTemplate.insert("product.addNewProduct", vo);
		 List<Map<String,Object>> list = fileUtils.parseInsertFileInfo(req);
		 
		 
		 for(int i=0, size=list.size(); i<size; i++){
			 sqlSessionTemplate.insert("product.addProductImg", list.get(i));
	 	}
		 
		 if(list.size()>0){
			 int fileId = sqlSessionTemplate.selectOne("product.getFileId");
			 int epId = sqlSessionTemplate.selectOne("product.getEpId");
			 map.put("epId", epId);
			 map.put("fileId", fileId);
			 sqlSessionTemplate.insert("product.addEpImg",map);
		 }
		return 0;
	}
	
	@Transactional(rollbackFor={SQLException.class})
	@Override
	public int editProduct(ProductVO vo, HttpServletRequest req) throws SQLException, Exception {
		Map<String,Object>map = new HashMap<String,Object>();
		FileUtils fileUtils = new FileUtils();
		
		sqlSessionTemplate.insert("product.updateProduct", vo);
		List<Map<String,Object>> list = null;
		
		// 수정 - 파일아이디 (있음) 
		if( vo.getFileId()!=0){
			list  = fileUtils.parseInsertFileInfo(req);
			
			for(int i=0, size=list.size(); i<size; i++){
				map.put("fileId", vo.getFileId());  
			  	map.put("filePath", list.get(i).get("filePath"));  
			  	map.put("realNm", list.get(i).get("realNm"));  
			  	map.put("changeNm",list.get(i).get("changeNm"));  
			  	
				sqlSessionTemplate.update("product.updateProductImg", map);
			}
			
			if(list.size()>0){
				map.put("epId", vo.getEpId());
				map.put("fileId", vo.getFileId());
				sqlSessionTemplate.update("product.editEpImg",map);
			}
		}
		
		// 등록 - 파일아이디는 없으나, 파일명이 들어옴.
		if(!vo.getRealNm().equals("") && vo.getFileId() == 0){
			req.setAttribute("yn", "editAdd");
			list  = fileUtils.parseInsertFileInfo(req);
			 for(int i=0, size=list.size(); i<size; i++){
				 sqlSessionTemplate.insert("product.addProductImg", list.get(i));
		 	}
			 
			 if(list.size()>0){
				 int fileId = sqlSessionTemplate.selectOne("product.getFileId");
				 map.put("epId", vo.getEpId());
				 map.put("fileId", fileId);
				 sqlSessionTemplate.insert("product.addEpImg",map);
			 }
		}
		
		return 0;
	}


	@Override
	public ProductVO getProductInfo(int epId) throws SQLException {
		ProductVO vo = new ProductVO();
		vo = sqlSessionTemplate.selectOne("product.getProductInfo", epId);
		return vo;
	}

	@Transactional(rollbackFor={SQLException.class})
	@Override
	public int deleteProduct(Map<String, Object> map) throws SQLException {
		int cnt = 0;
		cnt = sqlSessionTemplate.update("product.deleteEp",map);
		return cnt;
	}
}
