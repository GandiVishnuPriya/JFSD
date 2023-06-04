package com.klef.jfsd.springboot.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.project.model.Admin;
import com.klef.jfsd.springboot.project.model.Mentor;
import com.klef.jfsd.springboot.project.model.Project;
import com.klef.jfsd.springboot.project.model.Student;
import com.klef.jfsd.springboot.project.repository.AdminRepository;
import com.klef.jfsd.springboot.project.repository.MentorRepository;
import com.klef.jfsd.springboot.project.repository.ProjectRepository;
import com.klef.jfsd.springboot.project.repository.StudentRepository;

@Service
public class AdminServiceImpl implements AdminService 
{
	@Autowired
	private AdminRepository adminRepository;
	
	@Autowired
	private MentorRepository mentorRepository;
	
	@Autowired
	private StudentRepository studentRepository;
	

	@Autowired
	private ProjectRepository projectRepository;

	@Override
	public Admin checkadminlogin(String uname, String pwd)
	{
		return adminRepository.checkadminlogin(uname, pwd);
		 
	}
	
	@Override
	  public List<Mentor> viewallmentor()
	  {
	    
	    return (List<Mentor>) mentorRepository.findAll();
	  }
	@Override
	  public Mentor viewmentorbyid(int id) 
	  {
	    
	    return mentorRepository.findById(id).get();
	  }
	
	@Override
	public void deletementor(int id)
	{
		
	 mentorRepository.deleteById(id);
		
	}
	
	@Override
	  public List<Student> viewallstudent()
	  {
	    
	    return (List<Student>) studentRepository.findAll();
	  }
	@Override
	  public Student viewstudentbyid(int id) 
	  {
	    
	    return studentRepository.findById(id).get();
	  }
	
	@Override
	public void deletestudent(int id)
	{
		
	 studentRepository.deleteById(id);
		
	}

	@Override
	public List<Project> viewallproject() 
	{
		
		return (List<Project>) projectRepository.findAll();
		  
	}


}
