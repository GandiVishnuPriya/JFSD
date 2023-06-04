package com.klef.jfsd.springboot.project.repository;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;


import com.klef.jfsd.springboot.project.model.Team;

public interface TeamRepository extends CrudRepository<Team, Integer>
{
		@Query("select t from Team t where student1=?1 or student2=?2 or student3=?3")
		public Team checkteamregistration(String student1,String student2,String student3);
		
		@Transactional
		@Modifying
		@Query("update Team t set t.pid=?1 where t.teamid=?2")
		public int addprojectid(String pid,int teamid);

		
}
