package com.jobExist.Controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.jobExist.dto.Recruiter;
import com.jobExist.service.RecruiterService;

@WebServlet(value = "/RecruiterRegister")
@MultipartConfig
public class RecruiterRegisterController extends HttpServlet{
	
	RecruiterService ser=new RecruiterService();
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	try {
		Part file=req.getPart("RecuImg");
		String imageFileName=file.getSubmittedFileName();
//		String uploadPath="D:/JobWala/JobExist/src/main/webapp/RecruiterImage/"+imageFileName;
//		System.out.println(uploadPath);
	//	FileOutputStream fos=new FileOutputStream(uploadPath);
		InputStream is=file.getInputStream();
		
		byte[] image=new byte[is.available()];
		is.read(image);
//		fos.write(image);
//		fos.close();
		 String fullName=req.getParameter("NameRe");
		 String email=req.getParameter("emailRe");
		 String password=req.getParameter("passwordRe");
		 String passCon=req.getParameter("Comfirpassword");
		 
		
		 if(fullName.equals(""))
			{
				HttpSession ss=req.getSession();
				ss.setAttribute("message", "Please fill the name");
				resp.sendRedirect("Index.jsp");
				return ;
			}
			else if(email.equals("")){
				HttpSession ss=req.getSession();
				ss.setAttribute("message", "Please fill the Email");
				resp.sendRedirect("Index.jsp");
				return ;
			}else if(!password.equals(passCon))
			{
				HttpSession ss=req.getSession();
				ss.setAttribute("message", "Password Not Match");
				resp.sendRedirect("Index.jsp");
				return ;
			}
			else {
				 Recruiter rs=new Recruiter();
				 rs.setProfilePic(image);
				 rs.setEmail(email);
				 rs.setFullName(fullName);
				 rs.setPassword(password);
				 ser.registerRecruiterService(rs);
				    HttpSession ss1=req.getSession();
					ss1.setAttribute("Success", "Recruiter Registration sucessfully...");
					resp.sendRedirect("Index.jsp");
				 req.getRequestDispatcher("Index.jsp").forward(req, resp);
			}
		
		
	}catch (Exception e) {
		e.printStackTrace();
	}
	
	
}
}
