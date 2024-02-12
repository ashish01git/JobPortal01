package com.jobExist.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.jobExist.dto.ApplyJob;
import com.jobExist.dto.PostJob;

public class ApplyJobDao {
	
	EntityManagerFactory mf=Persistence.createEntityManagerFactory("JobExist");
	EntityManager em=mf.createEntityManager();
	EntityTransaction tr=em.getTransaction();
	
	public ApplyJob saveApplyJobDataDao(ApplyJob aj)
	{
		tr.begin();
		em.persist(aj);
		tr.commit();
		System.out.println("Applied..");
		return aj;
	}
	public List<ApplyJob> allAppliedDataShowDao()
	{
		Query q=em.createQuery("Select s from ApplyJob s");
//		Query q=em.createNamedQuery();
		List<ApplyJob> list=q.getResultList();
		
		System.out.println(list);
		return list;
	}

}
