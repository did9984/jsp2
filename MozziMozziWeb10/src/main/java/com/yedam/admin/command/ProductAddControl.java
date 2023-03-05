package com.yedam.admin.command;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.yedam.admin.service.AdminService;
import com.yedam.admin.service.AdminServiceImpl;
import com.yedam.admin.vo.AdminProductVO;
import com.yedam.common.Command;

public class ProductAddControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 글등록처리.
		// 파일 경로
		String savePath = req.getServletContext().getRealPath("/img/product");
		// 파일 사이즈 15MB
		int maxSize = (1024 * 1024 * 10);
		// encoding 방식 (charset)
		String encoding = "utf-8";

		try {
			// 파일업로드 서블릿.
			MultipartRequest multi = //
					new MultipartRequest(req, savePath, maxSize, encoding, new DefaultFileRenamePolicy());

			// 상품코드         prodAdd.jsp파일 input name에 있는 값
			String pCode = multi.getParameter("pCode");
			// 상품명           prodAdd.jsp파일 input name에 있는 값
			String pName = multi.getParameter("pName");
			// 제품가격          prodAdd.jsp파일 input name에 있는 값
			String pPrice = multi.getParameter("pPrice");
			// 카테고리          prodAdd.jsp파일 select name에 있는 값
			String category = multi.getParameter("category");
			
			// 파일이름
			String imgNames = "";

			Enumeration<?> main = multi.getFileNames();
			
			
			while (main.hasMoreElements()) {
				String file = (String) main.nextElement();
				imgNames += multi.getFilesystemName(file) + ",";
				//System.out.print(imgNames);
			}
			
			System.out.println();
			String[] img = imgNames.split(",");

			// detail 이미지가 main이미지보다 먼저 나옴
			//System.out.println("main : " + img[1]);
			//System.out.println("detail : " + img[0]);
			
			// ProductVO 생성.
			AdminProductVO vo = new AdminProductVO();
			
			//set에ProductVO에있는요소이름붙이기(위에지정한이름)	
			vo.setProdCode(pCode);
			vo.setProdName(pName);
			vo.setProdPrice(pPrice);
			vo.setProdCategory(category);
			
			// detail 이미지가 main 이미지보다 먼저 나오므로
			vo.setMainImage(img[1]); 		// main 이미지
			vo.setDetailImage(img[0]); 		// detail 이미지

			AdminService service = new AdminServiceImpl();
			//AdminService.java에 내가 지정한 추상메소드
			int r = service.addProduct(vo);

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "adminProductList.do";
	}

}
