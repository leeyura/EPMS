package kr.co.yul.repo;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import kr.co.yul.data.ApplyVO;

public interface ReqDao {
	List<ApplyVO> getReqList(Map<String, Object>map)throws SQLException;
	List<ApplyVO> getReqCard(Map<String, Object> map) throws SQLException;
	int changeState(Map<String, Object> map) throws SQLException;
	int getReqTotalCnt (Map<String, String> map)throws SQLException;
}
