package kr.co.store.model.vo;

import lombok.Data;

@Data
public class Payment {
	private int paymentNo;
	private String memberId;
	private String paymentDate;
	private int basketNo;
	private String mainImg;
	private String psName;
	private int psAmount;
	private String psPrice;
}
