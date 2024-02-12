package com.jobExist.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.jobExist.dto.JobSeeker;

public class JobSeekerDao 
{
	EntityManagerFactory mf=Persistence.createEntityManagerFactory("JobExist");
	EntityManager em=mf.createEntityManager();
	EntityTransaction tr=em.getTransaction();
	
	public JobSeeker registerJobSeekerDao(JobSeeker js)
	{
		tr.begin();
		em.persist(js);
		System.out.println("Job seeker is registered...");
		tr.commit();
		return js;
	}
	public List<JobSeeker> allJobSeekerDao()
	{
		Query q=em.createQuery("Select s from JobSeeker s");
		List<JobSeeker> list=q.getResultList();
		
		return list;
		
	}

}
