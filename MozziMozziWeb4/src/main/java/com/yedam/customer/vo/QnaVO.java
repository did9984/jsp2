package com.yedam.customer.vo;

import lombok.Data;

@Data
public class QnaVO {
	private int qnaNO;
	private String qnaTitle;
	private String qnaContent;
	private String writeDate;
	private String category;
	private int hitCount;
	private String userId;
}
