package com.yedam.customer.service;

import java.util.List;

import com.yedam.customer.vo.NoticeVO;
import com.yedam.customer.vo.QnaPagingVO;
import com.yedam.customer.vo.QnaVO;

public interface CustomerService {
	
	public int addNotice (NoticeVO notice); //공지사항 등록
    
	public List<QnaVO> viewQnA(); //고객센터문의 출력 
	
	public List<NoticeVO> listNotice (); //공지사항 리스트
	
	public  NoticeVO getNotice (String ntno); //공지사항 단건 조회
	
	public int updateNotice(NoticeVO notice); //공지사항 수정
	
	public int deleteNotice(int no); //공지사항 삭제
	
	public int addQna (QnaVO qna); //qna 등록
	
	public  QnaVO getQna (String qnano); //문의 단건조회
	

	public List<QnaVO> getMyQna(); //myQna 리스트

	public int countBoard(); // 게시물 총 갯수

	public List<QnaPagingVO> selectBoard(QnaPagingVO vo);// 페이징 처리 게시글 조회

}
