package com.klef.jfsd.springboot.project.service;

import com.klef.jfsd.springboot.project.model.Student;

public interface StudentService 
{
	public Student addstudent(Student student);
	public Student checkstudentlogin(String uname,String pwd);
	public Student viewstudent(String uname);
}
