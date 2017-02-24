package kr.co.yul.repo;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.yul.data.ApplyVO;

@Repository
public class ReqDaoImpl implements ReqDao {

	@Autowired
	private SqlSessionTemplate  sql;
	
	@Override
	public List<ApplyVO> getReqList(Map<String, Object> map) throws SQLException {
		List<ApplyVO>list = new ArrayList<ApplyVO>();
		list = sql.selectList("req.getReqList", map);
		return list;
	}
	
	@Override
	public List<ApplyVO> getReqCard(Map<String, Object> map) throws SQLException {
		List<ApplyVO>list = new ArrayList<ApplyVO>();
		list = sql.selectList("req.getReqCard", map);
		return list;
	}
	
	@Override
	public int getReqTotalCnt(Map<String, String> map) throws SQLException {
		int cnt =0;
		cnt = sql.selectOne("req.getReqTotalCnt",map);
		return cnt;
	}

	@Override
	public int changeState(Map<String, Object> map) throws SQLException {
		int cnt = 0;
		cnt = sql.update("req.updateState",map);
		return cnt;
	}
}
