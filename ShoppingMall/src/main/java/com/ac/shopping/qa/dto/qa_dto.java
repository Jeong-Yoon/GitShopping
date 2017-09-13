package com.ac.shopping.qa.dto;

public class qa_dto {

	
	// 글 번호
	int BOARD_INDEX;
	String BOARD_CONTENT;
	String BOARD_DATE;
	String BOARD_QUERY_TYPE;
	String BOARD_TITLE;
	String BOARD_REPLY="";
	String BOARD_WRITER;
	String BOARD_PWD;
	
	public int getBOARD_INDEX() {
		return BOARD_INDEX;
	}
	@Override
	public String toString() {
		return "qa_dto [BOARD_INDEX=" + BOARD_INDEX + ", BOARD_CONTENT=" + BOARD_CONTENT + ", BOARD_DATE=" + BOARD_DATE
				+ ", BOARD_QUERY_TYPE=" + BOARD_QUERY_TYPE + ", BOARD_TITLE=" + BOARD_TITLE + ", BOARD_REPLY="
				+ BOARD_REPLY + ", BOARD_WRITER=" + BOARD_WRITER + ", BOARD_PWD=" + BOARD_PWD + "]";
	}
	public void setBOARD_INDEX(int bOARD_INDEX) {
		BOARD_INDEX = bOARD_INDEX;
	}
	public String getBOARD_CONTENT() {
		return BOARD_CONTENT;
	}
	public void setBOARD_CONTENT(String bOARD_CONTENT) {
		BOARD_CONTENT = bOARD_CONTENT;
	}
	public String getBOARD_DATE() {
		return BOARD_DATE;
	}
	public void setBOARD_DATE(String bOARD_DATE) {
		BOARD_DATE = bOARD_DATE;
	}
	public String getBOARD_QUERY_TYPE() {
		return BOARD_QUERY_TYPE;
	}
	public void setBOARD_QUERY_TYPE(String bOARD_QUERY_TYPE) {
		BOARD_QUERY_TYPE = bOARD_QUERY_TYPE;
	}
	public String getBOARD_TITLE() {
		return BOARD_TITLE;
	}
	public void setBOARD_TITLE(String bOARD_TITLE) {
		BOARD_TITLE = bOARD_TITLE;
	}
	public String getBOARD_REPLY() {
		return BOARD_REPLY;
	}
	public void setBOARD_REPLY(String bOARD_REPLY) {
		BOARD_REPLY = bOARD_REPLY;
	}
	public String getBOARD_WRITER() {
		return BOARD_WRITER;
	}
	public void setBOARD_WRITER(String bOARD_WRITER) {
		BOARD_WRITER = bOARD_WRITER;
	}
	public String getBOARD_PWD() {
		return BOARD_PWD;
	}
	public void setBOARD_PWD(String bOARD_PWD) {
		BOARD_PWD = bOARD_PWD;
	}
	// 글 내용
	
	
	

	
	
	
}
