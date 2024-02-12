package com.jobExist.Controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.persistence.Lob;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.jobExist.dto.ApplyJob;
import com.jobExist.dto.JobSeeker;
import com.jobExist.service.ApplyJobService;

@WebServlet(value = "/ApplyJobhai")
@MultipartConfig
public class ApplyJobController extends HttpServlet {
	ApplyJobService ser = new ApplyJobService();

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 
		   
		try {
			int jobIdA =Integer.parseInt(req.getParameter("jbId1"));
			int jobSid=Integer.parseInt(req.getParameter("jsd"));
			String fullNameA=req.getParameter("fullName1");
			String emailA=req.getParameter("email1");
			String workStatus=req.getParameter("options");
			long phone=Long.parseLong(req.getParameter("phone1"));
			Part file=req.getPart("cv1");
			String imageFileName=file.getSubmittedFileName();
			String uploadPath="D:/JobWala/JobExist/src/main/webapp/AllResume/"+imageFileName;
			System.out.println(imageFileName);
			FileOutputStream fos=new FileOutputStream(uploadPath);
			InputStream is=file.getInputStream();
			
			byte[] cv=new byte[is.available()];
			is.read(cv);
			fos.write(cv);
			fos.close();
			ApplyJob ap=new ApplyJob();
			ap.setEmailA(emailA);
			ap.setFullNameA(fullNameA);
			ap.setJobIdA(jobIdA);
			ap.setJobSIdA(jobSid);
			ap.setPhone(phone);
			ap.setWorkStatus(workStatus);
			ap.setResume(cv);
			
		ApplyJob jj=ser.saveApplyJobDataService(ap);
		if(jj!=null)
		{
			 req.setAttribute("sun", "You Applied successfully...");
			 req.getRequestDispatcher("Home.jsp").forward(req, resp);
		}
			
			System.out.println(ap);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
