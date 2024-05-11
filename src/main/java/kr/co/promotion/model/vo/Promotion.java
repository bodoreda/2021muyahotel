package kr.co.promotion.model.vo;

import lombok.Data;

@Data
public class Promotion {

	private int proNo;
	private String proPath;
	private String proName;
	private String proTitle;
	private String proContent;
	private String proEnter;	//투숙기간 
	private String proDate;		//예약기간
}
