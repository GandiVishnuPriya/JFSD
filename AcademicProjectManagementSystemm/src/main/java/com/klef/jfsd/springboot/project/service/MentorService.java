package com.klef.jfsd.springboot.project.service;


import java.util.List;
import com.klef.jfsd.springboot.project.model.Mentor;

public interface MentorService 
{
	public Mentor addmentor(Mentor mentor);
	public Mentor checkmentorlogin(String uname,String pwd);
	public Mentor viewmentor(String uname);
	public int changementorpassword(String menoldpwd,String mennewpwd,String menuname);	
	
}
