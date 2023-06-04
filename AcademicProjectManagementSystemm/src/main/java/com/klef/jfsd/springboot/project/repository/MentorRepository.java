package com.klef.jfsd.springboot.project.repository;

import javax.transaction.Transactional;


import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.klef.jfsd.springboot.project.model.Mentor;

public interface MentorRepository extends CrudRepository<Mentor, Integer>
{
	@Query("select m from Mentor m where username=?1 and password=?2")
	public Mentor checkmentorlogin(String uname,String pwd);
	
	@Query("select m from Mentor m where username=?1")
	public Mentor viewmentor(String uname);
	
	@Transactional
	@Modifying
	@Query("update Mentor m set m.password=?1 where m.password=?2 and m.username=?3")
	public int updatemenpassword(String mennewpwd,String menoldpwd,String menuname);
	
	
}
