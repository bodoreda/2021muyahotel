package kr.co.guestroom.model.vo;

import lombok.Data;

@Data
public class Guestroom {
	// GUESTROOM 테이블
	private int roomNo; 		// 1.객실 번호
	private String imgName; 	// 2.객실 이미지 이름
	private String roomName; 	// 3.객실명
	private String visitors; 	// 4.인원
	private String roomSize; 	// 5.면적
	private String roomCharge; 	// 6.이용 요금
	
	// GUESTROOM_INFO 테이블
	private String roomType; 	// 7.객실 타입
	private String sortRoom;	// 8.객실 분류
	private String checkIn;		// 9.체크 인
	private String checkOut;	// 10.체크 아웃
	private String roomGuide;	// 11.객실 안내
	private String supply;		// 12.구비용품
	private String facility;	// 13.구비시설
}
