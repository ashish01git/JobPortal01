package com.jobExist.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jobExist.dao.JobSeekerDao;
import com.jobExist.dao.RecruiterDao;
import com.jobExist.dto.JobSeeker;
import com.jobExist.dto.Recruiter;

public class RecruiterService 
{
	
	RecruiterDao dao=new RecruiterDao();
	
	public Recruiter registerRecruiterService(Recruiter rs)
	{
		
		return dao.registerRecruiterDao(rs);
		 
	}
	

}
