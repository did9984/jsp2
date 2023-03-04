package com.yedam.product.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.yedam.common.DataSource;
import com.yedam.product.mapper.ProductMapper;
import com.yedam.product.vo.CartVO;
import com.yedam.product.vo.ProductVO;
import com.yedam.product.vo.ReviewVO;

public class ProductServiceImpl implements ProductService {

	
	SqlSession session = DataSource.getInstance().openSession(true);
	
	// session.selectOne("com.yedam.notice.mapper.NoticeMapper.getNotice")
	// NoticeService service = new NoticeServiceImpl(); 와 같은 원리인듯
	// NoticeMapper.java와 NoticeMapper.xml 을 매핑해주는 역할인듯?
	ProductMapper mapper = session.getMapper(ProductMapper.class);

	//목록
	@Override
	public List<ProductVO> productList() {
		// TODO Auto-generated method stub
		return mapper.getList();
	}
	//상세페이지
	@Override
	public ProductVO getProduct(String prodCode) {
		// TODO Auto-generated method stub
		return mapper.getProduct(prodCode);
	}
	
	@Override
	public int addCart(CartVO cart) {
		
		// 장바구니 데이터 체크
		CartVO checkCart = checkCart(cart);
		
		// 이미 장바구니 목록이 있다면
		if(checkCart != null) {
			return 2;
		}
				
		// 장바구니 등록 & 에러 시 0반환
		try {
			return mapper.addCart(cart); // 장바구니 등록
		} catch (Exception e) {
			return 0;
		}
	}
	
	@Override
	public CartVO checkCart(CartVO cart) {
		return mapper.checkCart(cart);
	}
	@Override
	public List<CartVO> cartList(String id) {
		return mapper.cartList(id);
	}
	
	@Override
	public int modifyCount(CartVO cart) {
		return mapper.modifyCount(cart);
	}
	
	@Override
	public int deleteCart(int cartId) {
		return mapper.deleteCart(cartId);
	}
	@Override
	public CartVO orderCart(int cartId) {
		return mapper.orderCart(cartId);
	}
	@Override
	public List<ProductVO> searchProducts(String query) {
		System.out.println(query);
		return mapper.searchProducts(query);
	}
	@Override
	public List<ProductVO> productListPresent() {
		return mapper.productListPresent();
	}
	
	@Override
	public List<ProductVO> productListCake() {
		return mapper.productListCake();
	}
	@Override
	public List<ProductVO> productListfusion() {
		return mapper.productListCake();
	}
	@Override
	public List<ProductVO> productListnormal() {
		return mapper.productListCake();
	}
	@Override
	public List<ReviewVO> reviewList(String prodCode) {
//      내가mapper에 쓸 이름 정함.
		return mapper.reviewList(prodCode);
	}

}
