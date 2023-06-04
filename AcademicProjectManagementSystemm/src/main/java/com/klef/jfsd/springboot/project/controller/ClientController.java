package com.klef.jfsd.springboot.project.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.project.model.Admin;
import com.klef.jfsd.springboot.project.model.Mentor;
import com.klef.jfsd.springboot.project.model.Project;
import com.klef.jfsd.springboot.project.model.Student;
import com.klef.jfsd.springboot.project.model.Team;
import com.klef.jfsd.springboot.project.service.AdminService;
import com.klef.jfsd.springboot.project.service.MentorService;
import com.klef.jfsd.springboot.project.service.ProjectService;
import com.klef.jfsd.springboot.project.service.StudentService;
import com.klef.jfsd.springboot.project.service.TeamService;

@Controller
public class ClientController
{

	@Autowired
	private AdminService adminService;
	
	@Autowired
	private MentorService mentorService;
	
	@Autowired
	private StudentService studentService;
	
	@Autowired
	private ProjectService projectService;
	
	@Autowired
	private TeamService teamService;
	
	@GetMapping("/")
	public String mainhomedemo()
	{
		return "index";
	}
	@GetMapping("/adminlogin")
	public ModelAndView adminlogindemo()
	{
		ModelAndView mv = new ModelAndView("adminlogin");
		return mv;
	}
	@GetMapping("/mentorlogin")
	public ModelAndView mentorlogindemo()
	{
		ModelAndView mv = new ModelAndView("mentorlogin");
		return mv;
	}
	@GetMapping("/studentlogin")
	public ModelAndView studentlogindemo()
	{
		ModelAndView mv = new ModelAndView("studentlogin");
		return mv;
	}
	@GetMapping("/adminhome")
	public ModelAndView adminhomedemo()
	{
		ModelAndView mv = new ModelAndView("adminhome");
		return mv;
	}
	@GetMapping("/mentorhome")
	public ModelAndView mentorhomedemo()
	{
		ModelAndView mv = new ModelAndView("mentorhome");
		return mv;
	}
	@GetMapping("/studenthome")
	public ModelAndView studenthomedemo()
	{
		ModelAndView mv = new ModelAndView("studenthome");
		return mv;
	}
	@PostMapping("/checkadminlogin")
	public ModelAndView checkadminlogindemo(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		
		String auname=request.getParameter("auname");
		String apwd=request.getParameter("apwd");
		
		Admin admin = adminService.checkadminlogin(auname, apwd);
		
		if(admin!=null)
		{
			HttpSession session = request.getSession();
			session.setAttribute("auname", auname);
			mv.setViewName("adminhome");
		}
		else
		{
			mv.setViewName("adminlogin");
			mv.addObject("msg","Login Failed");
		}
		return mv;
	}
	@PostMapping("/checkmentorlogin")
	public ModelAndView checkmenlogindemo(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		
		String euname=request.getParameter("euname");
		String epwd=request.getParameter("epwd");
		
		Mentor men= mentorService.checkmentorlogin(euname, epwd);
		
		if(men!=null)
		{
			HttpSession session = request.getSession();
			session.setAttribute("euname", euname);
			mv.setViewName("mentorhome");
		}
		else
		{
			mv.setViewName("mentorlogin");
			mv.addObject("msg","Login Failed");
		}
		return mv;
	}
	@PostMapping("/checkstudentlogin")
	public ModelAndView checkstudentlogindemo(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		
		String euname=request.getParameter("euname");
		String epwd=request.getParameter("epwd");
		
		Student stu= studentService.checkstudentlogin(euname, epwd);
		
		if(stu!=null)
		{
			HttpSession session = request.getSession();
			session.setAttribute("euname", euname);
			mv.setViewName("studenthome");
		}
		else
		{
			mv.setViewName("studentlogin");
			mv.addObject("msg","Login Failed");
		}
		return mv;
	}
	@PostMapping("/addmentor")
	  public String addmentordemo(@ModelAttribute("mentor") Mentor mentor)
	  {
	    mentorService.addmentor(mentor); 
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("mentorregistration");
	    mv.addObject("msg", "Mentor Registration Successfully");
	    return "redirect:mentorlogin";
	  }
	
	@PostMapping("/addproject")
	  public String addprojectdemo(@ModelAttribute("project") Project project)
	  {
		projectService.addproject(project); 
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("projectregistration");
	    mv.addObject("msg", "Project Registration Successfully");
	    return "redirect:adminhome";
	  }
	@PostMapping("/addstudent")
	  public String addstudentdemo(@ModelAttribute("student") Student student)
	  {
		studentService.addstudent(student); 
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("studentregistration");
	    mv.addObject("msg", "Student Registration Successfully");
	    return "redirect:studentlogin";
	  }
	@PostMapping("/addteam")
	  public String addteamdemo(@ModelAttribute("team") Team team)
	  {
		
	    teamService.addteam(team); 
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("addteam");
	    mv.addObject("msg", "Team Registration Successfully");
	    return "redirect:studentlogin";
	  }
	
	@GetMapping("/teamregistration")
	public ModelAndView teamregdemo(HttpServletRequest request)
	{
	    	ModelAndView mv = new ModelAndView("teamregistration","team",new Team());
			return mv;
	}
	@GetMapping("/mentorregistration")
	public ModelAndView mentorregdemo()
	{
			 ModelAndView mv = new ModelAndView("mentorregistration","mentor",new Mentor());
			 return mv;
	}
	@GetMapping("/projectregistration")
	public ModelAndView projectregdemo()
	{
			 ModelAndView mv = new ModelAndView("projectregistration","project",new Project());
			 return mv;
	}
	@GetMapping("/studentregistration")
	public ModelAndView studentregdemo()
	{
		
			 ModelAndView mv = new ModelAndView("studentregistration","student",new Student());
			 return mv;
	}

	@GetMapping("/viewmen")
	public ModelAndView viewmentordemo(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		String euname = (String) session.getAttribute("euname");
		
		Mentor men =  mentorService.viewmentor(euname);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewmentor");
		mv.addObject("men", men);
		return mv;
	}
	@GetMapping("/viewstudent")
	public ModelAndView viewstudentdemo(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		String euname = (String) session.getAttribute("euname");
		
		Student stu =  studentService.viewstudent(euname);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewstudent");
		mv.addObject("stu", stu);
		return mv;
	}
	@GetMapping("/mentorallocation")
	  public ModelAndView mentorselectiondemo(HttpServletRequest request)
	  {
		HttpSession session = request.getSession();
		String pid = (String) session.getAttribute("pid");
		ModelAndView mv = new ModelAndView();
		mv.setViewName("mentorallocation");
		mv.addObject("pid", pid);
		return mv;
	    
	  }
	  @PostMapping("/mentorselection")
	  public ModelAndView mentorallocatedemo(HttpServletRequest request)  
	  {
	  ModelAndView mv=new ModelAndView();
	    HttpSession session = request.getSession();
	    int teamid =  Integer.parseInt(request.getParameter("teamid"));
	    String pid=(String) session.getAttribute("pid");
	          int n  = teamService.updatementor(pid, teamid);  
	          if(n>0)
	          {
	            mv.setViewName("mentorallocati9on");
	            mv.addObject("msg","Mentor Selected Successfully");
	          }
	    return mv;
	  }
	@GetMapping("/mchangepwd")
	public ModelAndView mchangepwddemo(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		String muname = (String) session.getAttribute("muname");
		ModelAndView mv = new ModelAndView();
		mv.setViewName("menchangepwd");
		mv.addObject("muname", muname);
		return mv;
	}

	@PostMapping("/mchangepwd")
	public ModelAndView updatemenpwddemo(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("mchangepwd");
		HttpSession session = request.getSession();
		String muname = (String) session.getAttribute("muname");
		String moldpwd = request.getParameter("mopwd");
		String mnewpwd = request.getParameter("mnpwd");
		System.out.println(muname+","+moldpwd+","+mnewpwd);
		
		int n  = mentorService.changementorpassword(moldpwd, mnewpwd, muname);
		if(n>0)
		{
			
			mv.addObject("msg","Password updated successfully");
		}
		else
		{
			
			mv.addObject("msg","Old Password is Incorrect");
		}
		return mv;
	}
	
	
	@GetMapping("/viewallmentor")
	  public ModelAndView viewallmentorsdemo()
	  {
	    ModelAndView mv = new ModelAndView("viewallmentor");
	    List<Mentor> mentorlist=adminService.viewallmentor();
	    mv.addObject("mentorlist",mentorlist);
	    return mv;
	  }
	
	@GetMapping("/viewproductbyid")
	public ModelAndView  viewproductbyiddemo()
	{
	     List<Mentor> mentorlist=adminService.viewallmentor();
	     ModelAndView mv=new ModelAndView("viewproductbyid");
	     mv.addObject("mentorlist",mentorlist);
	     return mv;
	}
	
	@GetMapping("/deletementor")
	  public String deletementordemo(@RequestParam("id") int mid)
	  {
	    adminService.deletementor(mid);
	    return "redirect:viewallmentor";
	  }
	
	@GetMapping("/viewallstudent")
	  public ModelAndView viewallstudentdemo()
	  {
	    ModelAndView mv = new ModelAndView("viewallstudent");
	    List<Student> studentlist=adminService.viewallstudent();
	    mv.addObject("studentlist",studentlist);
	    return mv;
	  }
	@GetMapping("/viewallproject")
	  public ModelAndView viewallprojectdemo()
	  {
	    ModelAndView mv = new ModelAndView("viewallproject");
	    List<Project> projectlist=adminService.viewallproject();
	    mv.addObject("projectlist",projectlist);
	    return mv;
	  }
	
	@GetMapping("/viewstudentbyid")
	public ModelAndView viewstudentbyiddemo(@RequestParam("id") int sid)
	{
		Student student = adminService.viewstudentbyid(sid);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewstudentbyid");
		mv.addObject("student",student);
		return mv;
	}
	
	@GetMapping("/deletestudent")
	  public String deletestudentdemo(@RequestParam("id") int sid)
	  {
	    adminService.deletestudent(sid);
	    return "redirect:viewallstudent";
	  }
}
