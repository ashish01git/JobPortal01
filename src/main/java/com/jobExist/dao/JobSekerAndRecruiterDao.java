package com.jobExist.dao;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jobExist.dto.JobSeeker;
import com.jobExist.dto.Recruiter;

public class JobSekerAndRecruiterDao {
	
	
	
	EntityManagerFactory mf=Persistence.createEntityManagerFactory("JobExist");
	EntityManager em=mf.createEntityManager();
	EntityTransaction tr=em.getTransaction();
	
	
	
	public JobSeeker loginJobSeekerAndRecruiterDao(String email,String pass)
	{
		Query q=em.createQuery("Select s from JobSeeker s");
		List<JobSeeker> list=q.getResultList();
		for(JobSeeker js:list)
		{
			if((email.equals(js.getEmail()))&& (pass.equals(js.getPassword())))
			{
				System.out.println("JobSeeker : login successfully");
				return js;
			}
		}
		
		return null;
		
	}
	public Recruiter loginRecruiterDao(String email,String pass)
	{
		Query q1=em.createQuery("Select s from Recruiter s");
		List<Recruiter> list2=q1.getResultList();
		for(Recruiter rs:list2)
		{
			if((email.equals(rs.getEmail()))&& (pass.equals(rs.getPassword())))
			{
				System.out.println(" Recruiter : login successfully");
			return rs;
			}
		}
		return null;		
	}
	
}
