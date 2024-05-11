package kr.co.member.model.vo;

import lombok.Data;

@Data
public class Member {
	private int memberNo;
	private String memberId;
	private String memberPw;
	private String memberName;
	private String addr;
	private String phone;
	private int memberLevel;
	private String gender;
	private String enrollDate;
	private int memberPoint;

}
