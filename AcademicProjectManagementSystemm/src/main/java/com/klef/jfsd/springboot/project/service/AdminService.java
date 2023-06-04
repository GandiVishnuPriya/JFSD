package com.klef.jfsd.springboot.project.service;

import java.util.List;

import com.klef.jfsd.springboot.project.model.Admin;
import com.klef.jfsd.springboot.project.model.Mentor;
import com.klef.jfsd.springboot.project.model.Project;
import com.klef.jfsd.springboot.project.model.Student;

public interface AdminService
{
	public Admin checkadminlogin(String uname,String pwd);
	public void deletementor(int id);
	public List<Mentor> viewallmentor();
	public Mentor viewmentorbyid(int id);
	public void deletestudent(int id);
	public List<Student> viewallstudent();
	public List<Project> viewallproject();
	public Student viewstudentbyid(int id);
	
}
