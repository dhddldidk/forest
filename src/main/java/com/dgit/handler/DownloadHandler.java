package com.dgit.handler;

import java.io.FileInputStream;
import java.net.URLEncoder;

import javax.servlet.ServletContext;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dgit.controller.CommandHandler;

public class DownloadHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		String filename = req.getParameter("filename");
		
		String saveUploadPath = "upload";
		ServletContext context =req.getServletContext();
		String sDownloadPath = context.getRealPath(saveUploadPath);
		String sFilePath = sDownloadPath +"\\"+filename; //다운로드 파일의 절대주소
		
		byte b[] = new byte[4096];//4k
		FileInputStream in = new FileInputStream(sFilePath);
		
		String sMimeType = context.getMimeType(sFilePath);
		/*System.out.println("sMimeType = "+ sMimeType);
		System.out.println("DownloadPath = "+sFilePath);*/
		
		if(sMimeType == null){
			sMimeType = "application/octet-stream";
		}
		res.setContentType(sMimeType);
		String sEncoding = URLEncoder.encode(filename,"utf-8");
		
		//브라우저에서 파일이름이락 인식하는 부분
		res.setHeader("Content-Disposition","attachment;filename = "+ sEncoding);
		
		ServletOutputStream out = res.getOutputStream();
		int numRead;
		//파일안의 내용을 빼서 out버퍼에 담는다
		while((numRead = in.read(b,0,b.length)) != -1){
			out.write(b,0,numRead);
		}
		out.flush();
		out.close();
		in.close();
		return null;
	}

}
