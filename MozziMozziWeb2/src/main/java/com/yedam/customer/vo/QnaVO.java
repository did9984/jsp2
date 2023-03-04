package com.yedam.customer.vo;

import lombok.Data;

@Data
public class QnaVO {
	private int qnaNO;  //글번호
	private String qnaTitle; //글제목
	private String qnaContent; //글내용
	private String writeDate; //작성일자
	private String category; //카테고리
	private int hitCount; //조회수
	private String userId; //유저아이디
	private int num; //글번호
}
