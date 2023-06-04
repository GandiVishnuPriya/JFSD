package com.klef.jfsd.springboot.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.project.model.Team;
import com.klef.jfsd.springboot.project.repository.TeamRepository;
@Service
public class TeamServiceImpl implements TeamService
{

  @Autowired 
  private TeamRepository teamRepository;
  
  @Override
  public Team addteam(Team team) 
  {
    return teamRepository.save(team);
    
  }

  @Override
  public Team checkteamregistration(String uname) {
    return teamRepository.checkteamregistration(uname,uname,uname);
    
  }

@Override
public int updatementor(String pid, int teamid) 
{
	return teamRepository.addprojectid(pid,teamid);
	
}

}