package com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.model.EmpModel;
import com.model.LoginModel;
import com.service.EmpService;

@Controller
public class MainController
{
	@Autowired
	private EmpService empService;
	
	@RequestMapping("/view")
	public String getLogin()
	{
		return "Login";
	}
	
	@RequestMapping("/signup")
	public String getRegister()
	{
		return "Registration";
	}
	
	
//	To save data in table
	@RequestMapping("/dummy")
	public String Record()
	{
		return "Login";
	}
	
	@RequestMapping(value = "val", method = RequestMethod.POST)
	public String saveRecordRegister(@ModelAttribute ("em") EmpModel em)
	{
		empService.addemp(em);
		System.out.println(em);
		return "redirect:/dummy";
		//return "Login";
	}
	
//	after click on login button
	@RequestMapping(value="dologin",method = RequestMethod.POST)
	public String doLogin(@ModelAttribute ("lm") LoginModel lm,HttpSession session,Model model)
	
	{
		List<EmpModel> list = empService.dologin(lm);
		//a
		session.setAttribute("f", list);
		
		if( list == null)
		{
			return "Login";
		}
		else
		{
			//to show name after welcome
			session.setAttribute("getEmail",lm.getEmail());
			session.setAttribute("getPassword", lm.getPassword());
			//model.addAttribute("sesreg",lm.getEmail());
			return "redirect:/getdetail";
		}
	}
	
//	show data on table
	@RequestMapping("/getdetail")
	public String getAllTableData(Model m)
	{
		List<EmpModel> list = empService.getAllModel();
		m.addAttribute("list", list);
		return "Dashboard";
	}
	

}
