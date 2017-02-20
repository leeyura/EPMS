package kr.co.yul.repo;

import java.sql.SQLException;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import kr.co.yul.data.MemberVO;

@Repository
public class MemberDaoImpl implements MemberDao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
    @Transactional(rollbackFor={SQLException.class})
	@Override
	public int resisterMember(MemberVO vo) {
		int cnt =0;
		cnt = sqlSessionTemplate.insert("member.registerMember", vo);
		return cnt;
	}


	@Override
	public int checkEmailUse(MemberVO vo) throws SQLException {
		int cnt =0;
		cnt = sqlSessionTemplate.selectOne("member.checkEmail", vo);
		return cnt;
	}


	@Override
	public MemberVO getMemberInfo(String memEmail) throws SQLException {
		MemberVO vo = null;
		vo = sqlSessionTemplate.selectOne("member.getMemberInfo", memEmail);
		return vo;
	}
	
	
	
}
