package kr.co.yul.repo;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import kr.co.yul.data.ProductVO;


public interface ProductDao {
	int addNewProduct(ProductVO  vo, HttpServletRequest req) throws SQLException, Exception;
	List<ProductVO> getProductsList(Map<String, String> map)throws SQLException;
	List<ProductVO> getProductsCard(Map<String, Object> map)throws SQLException;
}
