package com.jobExist.Controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.jobExist.dto.JobSeeker;
import com.jobExist.dto.Recruiter;
import com.jobExist.service.JobSeekerService;
@WebServlet(value="/JobsikRegister")
@MultipartConfig
public class JobSeekerRegisterController extends HttpServlet 
{
   JobSeekerService joSer=new JobSeekerService();
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			Part file=req.getPart("jsImg");
			String imageFileName=file.getSubmittedFileName();
//			String uploadPath="D:/JobWala/JobExist/src/main/webapp/RecruiterImage/"+imageFileName;
			System.out.println(imageFileName);
//			FileOutputStream fos=new FileOutputStream(uploadPath);
			InputStream is=file.getInputStream();
			
			byte[] image=new byte[is.available()];
			is.read(image);
//			fos.write(image);
//			fos.close();
			 String fullName=req.getParameter("Namejs");
			 String email=req.getParameter("email");
			 long phone=Long.parseLong(req.getParameter("phone"));
			 String password=req.getParameter("password");
			 String passCon=req.getParameter("Comfirpassword");
			 
			 if(fullName.equals("")&& email.equals(""))
				{
				    HttpSession ss=req.getSession();
					ss.setAttribute("message", "Please fill the name And Email");
					resp.sendRedirect("Index.jsp");
					return ;
				}
				else if(!password.equals(passCon))
				{
					HttpSession ss=req.getSession();
					ss.setAttribute("message", "Password Not Match");
					resp.sendRedirect("Index.jsp");
					return ;
				}
				else {
					 JobSeeker js=new JobSeeker();
					  js.setEmail(email);
					  js.setPhone(phone);
					  js.setProfilePic(image);
					  js.setFullName(fullName);
					  js.setPassword(password);
					 joSer.registerJobSeekerService(js);
					 HttpSession ss1=req.getSession();
						ss1.setAttribute("Success", "Job Seeker  Registration sucessfully...");
						resp.sendRedirect("Index.jsp");
					 req.getRequestDispatcher("Index.jsp").forward(req, resp);
				}
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
	}
}
