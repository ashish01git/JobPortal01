package com.jobExist.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import com.jobExist.dto.JobSeeker;
import com.jobExist.dto.Recruiter;

public class RecruiterDao 
{
	EntityManagerFactory mf=Persistence.createEntityManagerFactory("JobExist");
	EntityManager em=mf.createEntityManager();
	EntityTransaction tr=em.getTransaction();
	
	public Recruiter registerRecruiterDao(Recruiter js)
	{
		tr.begin();
		em.persist(js);
		System.out.println("Recruiter is registered...");
		tr.commit();
		return js;
	}

}
