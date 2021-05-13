package com.jsplec.base;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

/**
 * Servlet implementation class FileUploadServlet
 */
@WebServlet("/FileUploadServlet")
public class FileUploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FileUploadServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		// 파일이 저장되는 실제 경로
		String realPath = request.getServletContext().getRealPath("resource/image");

		// 위 경로의 디렉토리가 존재하지 않으면 새로 생성
		File dir = new File(realPath);
		if(!dir.exists()) {
			dir.mkdirs();
		}
			
		// 파일크기 제한 설정 (15mb)	
		int sizeLimit = 15*1024*1024;
		
		// MultipartRequest 객체를 생성하면 파일 업로드 수행
		MultipartRequest multipartRequest = new MultipartRequest(request, realPath, sizeLimit, "utf-8", 
				new DefaultFileRenamePolicy());
	
		// 업로드한 파일명 가져오기
		String fileName = multipartRequest.getFilesystemName("file");

		response.sendRedirect("result.jsp?filename=" + fileName);
	}
}
