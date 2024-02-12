package com.jobExist.service;

import com.jobExist.dao.ApplyJobDao;
import com.jobExist.dto.ApplyJob;

public class ApplyJobService {
	
	ApplyJobDao dao=new ApplyJobDao();
	
	public ApplyJob saveApplyJobDataService(ApplyJob aj)
	{
		return dao.saveApplyJobDataDao(aj);
	}

}
