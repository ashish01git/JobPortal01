package com.jobExist.Controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.jobExist.dto.PostJob;
import com.jobExist.service.JobPostService;
@WebServlet(value = "/postJob")
@MultipartConfig
public class JobPostController extends HttpServlet {

	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// for uploading the image we need to write fileSystem 
		try {
			Part file=req.getPart("compImage1");
			String imageFileName=file.getSubmittedFileName();
			String uploadPath="D:/JobWala/JobExist/src/main/webapp/CompanyImage/"+imageFileName;
			System.out.println(uploadPath);
			FileOutputStream fos=new FileOutputStream(uploadPath);
			InputStream is=file.getInputStream();
			
			byte[] image=new byte[is.available()];
			is.read(image);
			fos.write(image);
			fos.close();
		   int jobid=Integer.parseInt(req.getParameter("jobid1"));
		   String jobTitle =req.getParameter("jobTitle1");
		   String companyName=req.getParameter("compName1");
		   String catagory=req.getParameter("catagory1");
		   String location=req.getParameter("location1") ;
		   int vacancy=Integer.parseInt(req.getParameter("vacancy1"));
		   String experience=req.getParameter("experi1");
		   String type =req.getParameter("type1");
		   int salary=Integer.parseInt(req.getParameter("salary1"));	  
		   String pubDate=(String)req.getParameter("publicDate1");
		   String lastD=(String)req.getParameter("publicDate1");
			Date publishDate=new SimpleDateFormat("yyyy-mm-dd").parse(pubDate) ;
			Date lastDate=new SimpleDateFormat("yyyy-mm-dd").parse(lastD) ;
			
			String description=req.getParameter("description1");
			   String aboutCompany=req.getParameter("aboutComp1");
			   String qualification=req.getParameter("qualification1");
			   String resposibility=req.getParameter("response1");
			   
			   PostJob ps=new PostJob();
			   ps.setCompImage(image);
			   ps.setJobTitle(jobTitle);
			   ps.setJobId(jobid);
			   ps.setCompanyName(companyName);
			   ps.setCatagory(catagory);
			   ps.setLocation(location);
			   ps.setVacancy(vacancy);
			   ps.setExperience(experience);
			   ps.setType(type);
			   ps.setSalary(salary);
			   ps.setPublishDate(publishDate);
			   ps.setLastDate(lastDate);
			   ps.setDescription(description);
			   ps.setAboutCompany(aboutCompany);
			   ps.setResposibility(resposibility);
			   ps.setQualification(qualification);
			   
			   new JobPostService().registerJobPostService(ps);
			   req.getRequestDispatcher("Home.jsp").forward(req, resp);
  
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 		   
		   
		   
	}
}
