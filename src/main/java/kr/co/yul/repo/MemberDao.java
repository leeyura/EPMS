package kr.co.yul.repo;

import java.sql.SQLException;

import kr.co.yul.data.MemberVO;

public interface MemberDao {
	int resisterMember(MemberVO vo) throws SQLException;
	int checkEmailUse(MemberVO vo) throws SQLException;
	MemberVO getMemberInfo(String memEmail)throws SQLException;
}
