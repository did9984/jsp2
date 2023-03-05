package com.yedam.common;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.admin.command.AdminProductAddControl;
import com.yedam.admin.command.AdminProductListControl;
import com.yedam.admin.command.DeleteProduct;
import com.yedam.admin.command.DetailImgUpdate;
import com.yedam.admin.command.GoodsMasterControl;
import com.yedam.admin.command.GoodsMasterSearchControl;
import com.yedam.admin.command.GoodsMaterChangeStatusControl;
import com.yedam.admin.command.GoodsMaterOrderCancel;
import com.yedam.admin.command.MainImgUpdate;
import com.yedam.admin.command.MemberListControl;
import com.yedam.admin.command.ModifyProduct;
import com.yedam.admin.command.ProductAddControl;
import com.yedam.admin.command.ProductManageControl;
import com.yedam.admin.command.ReviewListManageControl;
import com.yedam.customer.command.CustomerFnaControl;
import com.yedam.customer.command.CustomerNoticeControl;
import com.yedam.customer.command.CustomerNoticeFormControl;
import com.yedam.customer.command.CustomerNoticeInControl;
import com.yedam.customer.command.CustomerQnaAddControl;
import com.yedam.customer.command.CustomerQnaControl;
import com.yedam.customer.command.CustomerQnaFormControl;
import com.yedam.customer.command.CustomerQnaInControl;
import com.yedam.customer.command.NoticeAddControl;
import com.yedam.customer.command.NoticeAddFormControl;
import com.yedam.customer.command.NoticeDeleteControl;
import com.yedam.customer.command.NoticeUpdateControl;
import com.yedam.customer.command.ReviewManageControl;
import com.yedam.member.command.IdCheckControl;
import com.yedam.member.command.IdFindControl;
import com.yedam.member.command.IdFindInfoControl;
import com.yedam.member.command.LoginControl;
import com.yedam.member.command.LogoutCointrol;
import com.yedam.member.command.MailSenderControl;
import com.yedam.member.command.PwFindControl;
import com.yedam.member.command.PwFindInfoControl;
import com.yedam.member.command.SignUpControl;
import com.yedam.member.command.SignUpEmailControl;
import com.yedam.member.command.SignUpFormControl;
import com.yedam.member.command.MailSendControl;
import com.yedam.mypage.command.ModifyInfoControl;
import com.yedam.mypage.command.MyInfoDelCheckControl;
import com.yedam.mypage.command.MyInfoDelControl;
import com.yedam.mypage.command.MyInquiryControl;
import com.yedam.mypage.command.MyInquiryDetailControl;
import com.yedam.mypage.command.MyPageInfoCheckControl;
import com.yedam.mypage.command.MyPageInfoControl;
import com.yedam.mypage.command.ReviewAddControl;
import com.yedam.mypage.command.ReviewWriteFormControl;
import com.yedam.pay.command.KakaoPayControl;
import com.yedam.pay.command.OrderDetailControl;
import com.yedam.pay.command.OrderEndControl;
import com.yedam.pay.command.OrderListControl;
import com.yedam.product.command.CartAddControl;
import com.yedam.product.command.CartControl;
import com.yedam.product.command.CartDeleteControl;
import com.yedam.product.command.CartUpdateControl;
import com.yedam.product.command.MainControl;
import com.yedam.product.command.OneOrderControl;
import com.yedam.product.command.OrderControl;
import com.yedam.product.command.ProductControll;
import com.yedam.product.command.ProductDetailControl;
import com.yedam.product.command.ProductListControl;
import com.yedam.product.command.productListCake;
import com.yedam.product.command.productListFusionControl;
import com.yedam.product.command.productListNormal;
import com.yedam.product.command.productListPresentControl;

public class FrontController extends HttpServlet {

	private Map<String, Command> map;
	private String charset;

	public FrontController() {
		map = new HashMap<String, Command>();
	}

	@Override
	public void init(ServletConfig config) throws ServletException {

		charset = config.getInitParameter("charset");

		map.put("/main.do", new MainControl()); // 메인페이지 main.jsp
		
		// 회원 Mamber
		map.put("/login.do", new LoginControl()); // 로그인 페이지 login.jsp
		map.put("/signUpForm.do", new SignUpFormControl());  // // 회원가입 페이지 signUPForm.jsp
		map.put("/signUp.do", new SignUpControl()); // 회원가입 post방식
		map.put("/idCheck.do", new IdCheckControl()); // 아이디중복확인
		map.put("/logout.do", new LogoutCointrol()); // 로그아웃 ( 세션버리는 컨트롤 )
		map.put("/MailSender.do", new MailSenderControl()); //메일 보내기
		map.put("/idFind.do", new IdFindControl()); // 아이디찾기
		map.put("/idFindInfo.do", new IdFindInfoControl()); // 아이디 찾았을때
		map.put("/pwFind.do", new PwFindControl()); // 비번찾기
		map.put("/pwFindInfo.do", new PwFindInfoControl());// 비번 찾았을때
		map.put("/signUpEmail.do", new SignUpEmailControl());// 비번 찾았을때
		map.put("/mailSend.do", new MailSendControl());// 비번 찾았을때
		
		// 상품 Product
		map.put("/productList.do", new ProductListControl()); // 상품리스트
		map.put("/productDetail.do", new ProductDetailControl()); // 제품 상세 페이지
		map.put("/cart.do", new CartControl()); // 장바구니
		map.put("/cartAdd.do", new CartAddControl()); // 장바구니 추가
		map.put("/cartUpdate.do", new CartUpdateControl()); // 장바구니 수정
		map.put("/cartDelete.do", new CartDeleteControl()); // 장바구니 삭제	
		
		// 마이페이지
		map.put("/myInfo.do", new MyPageInfoControl()); // 회원정보 - 비밀번호 입력폼
		map.put("/myInfoCheck.do", new MyPageInfoCheckControl()); // 회원정보 수정
		map.put("/myInfoModify.do", new ModifyInfoControl()); //회원정보 수정
		map.put("/revieWriteForm.do", new ReviewWriteFormControl()); // 리뷰쓰기 페이지
		map.put("/reviewAdd.do", new ReviewAddControl()); // 리뷰 등록 페이지
		map.put("/reviewManage.do", new ReviewManageControl()); // 리뷰쓰기 페이지
		map.put("/myInquiry.do", new MyInquiryControl()); // 나의 문의 페이지
		map.put("/myInquiryDetail.do", new MyInquiryDetailControl()); // 나의 문의 페이지
		map.put("/orderList.do", new OrderListControl()); //주문내역
		map.put("/myInfoDelCheck.do", new MyInfoDelCheckControl()); //회원탈퇴)
		map.put("/myInfoDel.do", new MyInfoDelControl()); //회원탈퇴)
		map.put("/search.do", new ProductControll());//검색
		
		// 관리자 
		map.put("/memberList.do", new MemberListControl()); // 회원리스트
		map.put("/adminProductAdd.do", new AdminProductAddControl()); // 관리자 : 상품등록
		map.put("/productAdd.do", new ProductAddControl()); // 관리자 : 상품등록
		map.put("/adminProductList.do", new AdminProductListControl()); // 관리자 : 상품 리스트(조회)
		map.put("/productManage.do", new ProductManageControl()); // 관리자 : 상품관리(수정, 삭제)
		map.put("/reviewListManage.do", new ReviewListManageControl()); // 리뷰 관리 페이지
		map.put("/goodsmaster.do", new GoodsMasterControl()); // 전체 주문 페이지
		//map.put("/goodsmaster.do", new GoodsMasterControl()); // 전체 주문 페이지
        map.put("/searchResult.do",new GoodsMasterSearchControl()); //전체 주문 검색 추가
		
		map.put("/modifyProduct.do", new ModifyProduct()); // 관리자 : 상품 수정
        map.put("/deleteProduct.do", new DeleteProduct()); // 관리자 : 상품 삭제
        map.put("/mainImgUpdate.do", new MainImgUpdate()); // 이미지 변경 페이지
        map.put("/detailImgUpdate.do", new DetailImgUpdate()); // 이미지 변경 페이지
		
		// 고객센터
		map.put("/customerFna.do", new CustomerFnaControl()); // F&A
		map.put("/customerQna.do", new CustomerQnaControl()); // Q&A
		map.put("/customerNotice.do", new CustomerNoticeControl()); // 공지사항
		map.put("/noticeUpdate.do", new NoticeUpdateControl()); //공지사항 수정
        map.put("/noticeDelete.do", new NoticeDeleteControl()); //공지사항 삭제
		map.put("/customerQnaForm.do", new CustomerQnaFormControl()); // 상품문의 페이지
		map.put("/customerNoticeForm.do", new CustomerNoticeFormControl()); // 공지사항 등록 페이지
		map.put("/noticeAddForm.do", new NoticeAddFormControl()); //공지사항 등록 폼
		map.put("/noticeAdd.do", new NoticeAddControl()); // 공지사항 추가
		map.put("/customerQnaAdd.do", new CustomerQnaAddControl()); // 문의 등록
		map.put("/customerQnaIn.do", new CustomerQnaInControl()); // 문의 내용조회
		map.put("/customerNoticeIn.do", new CustomerNoticeInControl()); //공지사항 내용 출력
		
		// 결제
		map.put("/order.do", new OrderControl()); // 장바구니 다건 주문서(주문)
		map.put("/oneOrder.do", new OneOrderControl()); // 단건 주문서(주문)
		map.put("/kakaoPay.do", new KakaoPayControl()); // 카카오페이 결제
		map.put("/orderEnd.do", new OrderEndControl()); // 주문완료
		map.put("/orderDetail.do", new OrderDetailControl()); // 결제완료한 주문건 상세 페이지
			
		// 카테고리
		map.put("/productListPresent.do", new productListPresentControl()); // 선물세트 카테고리
        map.put("/productListCake.do", new productListCake()); // 모찌케이크 카테고리
        map.put("/productListFusion.do", new productListFusionControl()); // 퓨전모찌 카테고리
        map.put("/productListNormal.do", new productListNormal()); // 노멀모찌 카테고리

        
        
        
        
        
        
        
        
        
        
        
        
        map.put("/orderCancel.do", new GoodsMaterOrderCancel());// 주문 취소
        
        
        
        
        
        
        
        
        map.put("/changeStatus.do", new GoodsMaterChangeStatusControl());// 주문 상태 변경
	}

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding(charset);
 
		String uri = req.getRequestURI();
		String context = req.getContextPath();
		String page = uri.substring(context.length());
		System.out.println(page);

		Command command = map.get(page);
		String viewPage = command.exec(req, resp);
		// notice/noticeList.tiles

		if (viewPage.endsWith(".tiles")) {
			RequestDispatcher rd = req.getRequestDispatcher(viewPage);
			rd.forward(req, resp);

		} else if (viewPage.endsWith(".do")) {
			resp.sendRedirect(viewPage);

		} else if (viewPage.endsWith(".json")) {
			resp.setContentType("text/json;charset=utf-8");
			resp.getWriter().print(viewPage.substring(0, viewPage.length() - 5));
		}

	}
}
