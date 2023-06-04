package com.klef.jfsd.springboot.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.project.model.Mentor;
import com.klef.jfsd.springboot.project.repository.MentorRepository;
@Service
public class MentorServiceImpl implements MentorService
{
	@Autowired
	private MentorRepository mentorRepository;
	
	@Override
	public Mentor addmentor(Mentor mentor) 
	{
		return mentorRepository.save(mentor);
	}

	@Override
	public Mentor checkmentorlogin(String uname, String pwd) {
		return mentorRepository.checkmentorlogin(uname, pwd);
	}

	@Override
	public Mentor viewmentor(String uname) {
		return mentorRepository.viewmentor(uname);
	}

	@Override
	public int changementorpassword(String menoldpwd, String mennewpwd, String menuname) 
	{	
		return mentorRepository.updatemenpassword(mennewpwd, menoldpwd, menuname);
	}

}
