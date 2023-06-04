package com.klef.jfsd.springboot.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="project_table")
public class Project 
{
  @Id
    @Column(length = 200)
  private String pid;
    @Column(nullable = false, length = 100)
     private String name;
    @Column(nullable = false,length = 500)
     private String description;
    @Column(nullable = false,unique=true)
     private int mentorid;
  @Override
  public String toString() {
    return "Project [pid=" + pid + ", name=" + name + ", description=" + description + ", mentorid=" + mentorid + "]";
  }
  public String getPid() {
    return pid;
  }
  public void setPid(String pid) {
    this.pid = pid;
  }
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }
  public String getDescription() {
    return description;
  }
  public void setDescription(String description) {
    this.description = description;
  }
 
  public int getMentorid() {
    return mentorid;
  }
  public void setMentorid(int mentorid) {
    this.mentorid = mentorid;
  }
}