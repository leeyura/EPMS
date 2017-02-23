package kr.co.yul.repo;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import kr.co.yul.data.ApplyVO;
import kr.co.yul.data.ProductVO;

public interface ApplyDao {
	List<ProductVO> getproductNmList(String type)throws SQLException;
	ApplyVO getApplyInfo(int epId)throws SQLException;
	List<ApplyVO> getApplyList(Map<String, String>map)throws SQLException;
	int addApply(ApplyVO vo)throws SQLException;
	int editApply(ApplyVO vo)throws SQLException;
	int cancelApply(Map<String, Object> map)throws SQLException;
}
