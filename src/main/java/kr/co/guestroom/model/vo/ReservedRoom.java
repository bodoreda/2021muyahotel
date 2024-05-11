package kr.co.guestroom.model.vo;

import lombok.Data;

@Data
public class ReservedRoom {
	private int reserveNo;
	private int roomNo;
	private String reservedClient;
	private String checkIn;
	private String checkOut;
	private String reserveDate;
}
