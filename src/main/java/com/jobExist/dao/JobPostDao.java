package com.jobExist.dao;

import java.io.IOException;
import java.util.ArrayList;
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

import com.jobExist.dto.PostJob;

public class JobPostDao {
	EntityManagerFactory mf=Persistence.createEntityManagerFactory("JobExist");
	EntityManager em=mf.createEntityManager();
	EntityTransaction tr=em.getTransaction();
	RequestDispatcher ds;
	public PostJob savePostjobDao(PostJob jp)
	{
		tr.begin();
		em.persist(jp);
		tr.commit();
		System.out.println("Job Posted...");
		return jp;
	}
	
	public List<PostJob> allDataShowDao()
	{
		Query q=em.createQuery("Select s from PostJob s");
//		Query q=em.createNamedQuery();
		List<PostJob> list=q.getResultList();
		
		System.out.println(list);
		return list;
	}
	
	
}
