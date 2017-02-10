package kr.co.yul.data;

import java.util.Date;
import lombok.Data;

@Data
public class Rsps {
	private Long history_id;
	private String p_type;
	private String u_type;
	private Date reg_date;
	private String vs_result;	
}