package kr.co.event.model.vo;

import lombok.Data;

@Data
public class Event {

	private int evNo;
	private String filePath;
	private String fileName;
	private String evTitle;
	private String evContent;
	private String evDate;
	private int evActive;
}
