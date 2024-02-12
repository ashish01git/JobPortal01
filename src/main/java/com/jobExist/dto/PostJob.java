package com.jobExist.dto;

import java.util.Date;

import javax.persistence.*;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@Entity
@AllArgsConstructor
@NoArgsConstructor
public class PostJob {
  @Id
  private int jobId;
  @Lob
  private byte[] compImage;
  
  private String jobTitle;
  private String companyName;
  private String catagory;
  private String location ;
  private int vacancy;
  private String experience;
  private String type;
  private int salary;
  @Temporal(TemporalType.DATE)
  private Date publishDate; 
  @Temporal(TemporalType.DATE)
  private Date lastDate; 
  private String description;
  private String aboutCompany;
  private String qualification;
  private String resposibility;
  
  
}
