package kr.co.yul.repo;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.yul.data.Rsps;

@Repository
public class RspsDaoImpl implements RspsDao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public List<Rsps> selectRsps() {
		 List<Rsps> list = sqlSessionTemplate.selectList("rsps.selectRSPS");
		return list;
	}

}
