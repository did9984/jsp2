package com.yedam.customer.vo;

import lombok.Data;

@Data
public class NoticeVO {
	// 공지사항 테이블
	private int no; // 번호
	private String title; // 제목
	private String content; // 내용
	private String noticeDate; // 작성일자
	private int hitCount; // 조회수
	private int num; //글번호
	
}
