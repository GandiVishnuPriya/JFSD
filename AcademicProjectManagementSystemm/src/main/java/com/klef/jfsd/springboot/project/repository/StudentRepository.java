package com.klef.jfsd.springboot.project.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.klef.jfsd.springboot.project.model.Mentor;
import com.klef.jfsd.springboot.project.model.Student;


public interface StudentRepository extends CrudRepository<Student, Integer>
{
	@Query("select s from Student s where username=?1 and password=?2")
	public Student checkstudentlogin(String uname,String pwd);
	
	@Query("select s from Student s where username=?1")
	public Student viewstudent(String uname);
}
