package kr.co.yul.repo;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.yul.data.ApplyVO;
import kr.co.yul.data.ProductVO;


@Repository
public class ApplyDaoImpl implements ApplyDao{

	@Autowired
	private SqlSessionTemplate  sql;
	
	@Override
	public List<ProductVO> getproductNmList(String type) throws SQLException {
		List<ProductVO> list = new ArrayList<ProductVO>();
		list = sql.selectList("apply.getproductNmList", type);
		return list;
	}

	@Override
	public int checkApply(Map<String, Object> map) throws SQLException {
		int cnt = 0;
		cnt = sql.selectOne("apply.checkApply", map);
		return cnt;
	}



	@Override
	public int addApply(ApplyVO vo) throws SQLException {
		int cnt =0;
		cnt = sql.insert("apply.addApply",vo);
		return cnt;
	}

	@Override
	public List<ApplyVO> getApplyList(Map<String, String> map) throws SQLException {
		List<ApplyVO>list = new ArrayList<ApplyVO>();
		list = sql.selectList("apply.getApllyList", map);
		return list;
	}
	//getApllyList

	@Override
	public int cancelApply(Map<String, Object> map) throws SQLException {
		// TODO Auto-generated method stub
		int cnt =0;
		cnt = sql.update("apply.cancelApply", map);
		return cnt;
	}
	
	@Override
	public int editApply(ApplyVO vo) throws SQLException {
		int cnt = 0;
		cnt = sql.update("apply.updateApply", vo);
		return cnt;
	}

	@Override
	public ApplyVO getApplyInfo(int epId) throws SQLException {
		ApplyVO vo = null;
		vo = sql.selectOne("apply.applyInfo", epId); 
		return vo;
	}
}
