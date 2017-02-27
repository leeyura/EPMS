package kr.co.yul.data;

import java.util.Date;
import lombok.Data;

@Data
public class ApplyVO {
	/* vo 작성하기 */            
	private int memId;
	private int fileId;
	private String memNm;
	private String udtNm;
	private int epId;
	private String epNm;
	private int memUdtId;
	private int epCnt;
	private String epType;
	private int epTtPrice;
	private int epPrice;
	private String etc;
	private String insertDt;
	private Date deleteDt;
	private String cancelEp;
	private String cause;
	private String epState;
}