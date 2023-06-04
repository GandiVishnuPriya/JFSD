package com.klef.jfsd.springboot.project.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.project.model.Project;

@Repository
public interface ProjectRepository extends CrudRepository<Project, String>
{

}
