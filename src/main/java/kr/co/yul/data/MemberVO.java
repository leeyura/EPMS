package kr.co.yul.data;

import java.util.Date;
import lombok.Data;

@Data
public class MemberVO {
	private int memId;
	private String memEmail;
	private String memPwd;
	private String memNm;
	private String memTel;
	private String memBD;
	private Date insertDate;
	private Date updateDate;
	private String memUseYn;	
	private String memGrade;	
}