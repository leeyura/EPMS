package kr.co.yul.repo;

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
	public List<ProductVO> getProductsList(Map<String, String> map) throws SQLException {
		List<ProductVO> list = null;
		list = sqlSessionTemplate.selectList("product.getEpList", map);
		return list;
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


	@Override
	public int deleteProduct(Map<String, Object> map) throws SQLException {
		int cnt = 0;
		cnt = sqlSessionTemplate.update("product.deleteEp",map);
		return cnt;
	}

	
	
}
