package com.jobExist.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jobExist.dao.JobSeekerDao;
import com.jobExist.dto.JobSeeker;

public class JobSeekerService extends HttpServlet
{
	JobSeekerDao jdao=new JobSeekerDao();
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	  
		
	}
	public  JobSeeker registerJobSeekerService(JobSeeker js)
	{
		
		 return jdao.registerJobSeekerDao(js);
	}

}
