package org.spring.jesa5.dto;

import java.sql.Date;

import org.springframework.stereotype.Component;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Lob;
import lombok.Data;

@Entity
@Component
@Data
public class Faculty {
	@Id
	@GeneratedValue(strategy =GenerationType.IDENTITY)
	private int id;
	private String name;
	private String email;
	private long mobile;
	private int age;
	private Date dob;
	private Date doj;
	private boolean status;
    private String gender;
    private int experience;
    private String subject;
    private String education;
    private String password;
    
    @Lob
    @Column(columnDefinition = "LONGBLOB")
    byte[] picture;

	
    
    


    
    
    
}
