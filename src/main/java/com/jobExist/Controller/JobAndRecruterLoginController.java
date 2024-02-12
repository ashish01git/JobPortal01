package com.jobExist.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jobExist.dao.JobSekerAndRecruiterDao;
import com.jobExist.dto.JobSeeker;
import com.jobExist.dto.Recruiter;

@WebServlet(value = "/loginModul")
public class JobAndRecruterLoginController extends HttpServlet{

	
	JobSekerAndRecruiterDao dao=new JobSekerAndRecruiterDao();
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	   String email=req.getParameter("email");
	   String pass=req.getParameter("password");
	   HttpSession ss1=null;
	   System.out.println(email+"\t"+pass);
	   
	   JobSeeker aa=dao.loginJobSeekerAndRecruiterDao(email, pass);
	   Recruiter rr=dao.loginRecruiterDao(email, pass);
	   System.out.println(aa);
	   if(aa!=null)
	   {
		     System.out.println("login success..");
		     ss1=req.getSession();
		     ss1.setAttribute("jsid", aa);
		     req.setAttribute("sun", "Hey ! "+aa.getFullName()+" You Login Sucessfully..");
			 req.getRequestDispatcher("Home.jsp").forward(req, resp);
			 
			
	   }else if(rr!=null)
	   {
		   req.setAttribute("sun", "Hey ! "+rr.getFullName()+" You Login Sucessfully..");
		   req.getRequestDispatcher("REHome.jsp").forward(req, resp);
	   }
	   else {
		   HttpSession ss=req.getSession();
			ss.setAttribute("message", "Invalid Email and Password..");
			resp.sendRedirect("Index.jsp");
			return ;
	   }
	   
	}
}
