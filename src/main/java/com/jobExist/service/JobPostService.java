package com.jobExist.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jobExist.dao.JobPostDao;
import com.jobExist.dao.JobSeekerDao;
import com.jobExist.dto.JobSeeker;
import com.jobExist.dto.PostJob;

public class JobPostService extends HttpServlet
{
	JobPostDao jpdao=new JobPostDao();
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	  
		
	}
	public  PostJob registerJobPostService(PostJob pj)
	{
		
		 return jpdao.savePostjobDao(pj);
	}

}
