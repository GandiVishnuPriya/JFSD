package com.klef.jfsd.springboot.project.service;

import com.klef.jfsd.springboot.project.model.Team;

public interface TeamService
{
  public Team addteam(Team team);
  public Team checkteamregistration(String uname);
  public int updatementor(String pid,int teamid);
  
}