package com.jobExist.Controller;

import java.awt.image.BufferedImage;
import java.sql.Blob;
import java.util.List;

import com.jobExist.dao.JobPostDao;
import com.jobExist.dto.PostJob;

public class Driver {
  public static void main(String[] args) {
	JobPostDao d=new JobPostDao();
     List<PostJob> ld=d.allDataShowDao();
     for(PostJob jb:ld)
     {
          
     }
}
}
