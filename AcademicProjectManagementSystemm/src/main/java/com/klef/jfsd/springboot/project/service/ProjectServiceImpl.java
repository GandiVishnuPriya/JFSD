package com.klef.jfsd.springboot.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.project.model.Mentor;
import com.klef.jfsd.springboot.project.model.Project;
import com.klef.jfsd.springboot.project.repository.ProjectRepository;


@Service
public class ProjectServiceImpl implements ProjectService
{
	@Autowired
	private ProjectRepository projectRepository;
	
	@Override
	public Project addproject(Project project) 
	{
		return projectRepository.save(project);
	}
}
