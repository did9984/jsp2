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

public class DetailImgUpdate implements Command{

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String savaPath = req.getServletContext().getRealPath("/img/product"); // 2) 저장경로
		int maxSize = (1024 * 1024 * 10); // 3) 최대파일사이즈 지정 : 10메가 
		String encoding = "utf-8"; // 4) 인코딩 방식
		
		try {
			// MultipartRequest로 전송받은 데이터를 불러온다.
			// form에 enctype을 "multipart/form-data"로 선언하고 
			// submit한 데이터들은 request객체가 아닌 MultipartRequest객체로 불러와야 한다.
			MultipartRequest multi = new MultipartRequest(req,savaPath,maxSize,encoding,new DefaultFileRenamePolicy());
			
			String id = multi.getParameter("id");
			String fileName = "";
			
			Enumeration<?> files = multi.getFileNames(); // 사진을 여러장 업로드 할수있음
			while(files.hasMoreElements()) {
				String file = (String) files.nextElement(); // 파일의 이름만 읽어들임
				//System.out.println(file);
				fileName = multi.getFilesystemName(file); // 동일한 파일명이 있다면 바뀐파일의 이름을 읽어오는것
			}
			
			AdminProductVO vo = new AdminProductVO();
			vo.setProdCode(id);
			vo.setMainImage(fileName);

			
			AdminService service = new AdminServiceImpl();
			service.modifyProduct(vo); // 정보 변경
			
			System.out.println(vo);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		// {"retCode":"Success"}
		return "{\"retCode\":\"Success\"}";
				
	}

	
	
	
}