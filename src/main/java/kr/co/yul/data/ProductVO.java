package kr.co.yul.data;

import lombok.Data;

@Data
public class ProductVO {
	private int epId;
	private int fileId;
	private int memId;
	private String memNm;
	private String epNm;
	private int epPrice;
	private String epsPrice;
	private String epType;
	private int epIstMemId;
	private int epUstMemId;
	private String epUseYn;
	private String insertDt;
	private String updateDt;
	private String deleteDt;
	private String realNm;
	private String filePath;
}