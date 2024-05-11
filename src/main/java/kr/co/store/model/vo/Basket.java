package kr.co.store.model.vo;

import lombok.Data;

@Data
public class Basket {
	private int basketNo;
	private String memberId;
	private int psNo;
	private int psAmount;
	private String basketStatus;
	private String psName;
	private String psPrice;
	private String mainImg;
}
