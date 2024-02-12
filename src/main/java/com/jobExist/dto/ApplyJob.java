package com.jobExist.dto;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class ApplyJob {
    
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int applyId;
	private int jobIdA;
	private int jobSIdA;
	private String fullNameA;
	private String emailA;
	private String workStatus;
	private long phone;
	@Lob
	private byte[] resume;
	
	
	
}
