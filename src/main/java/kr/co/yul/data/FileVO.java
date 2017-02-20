package kr.co.yul.data;

import java.util.Date;

import lombok.Data;

@Data
public class FileVO {
	private int fileId;
	private String realNm;
	private String changeNm;
	private String filePath;
	private Date insertDt;
	private Date updateDt;
	
}
