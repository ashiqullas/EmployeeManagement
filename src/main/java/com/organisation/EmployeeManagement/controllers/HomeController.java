package com.organisation.EmployeeManagement.controllers;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.organisation.EmployeeManagement.entity.Admin;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String displayWelcomePage() {
		return "login";
	}
	
	@RequestMapping("/logout")
	public String displaylogout() {
		return "logout";
	}
	@RequestMapping("/login")
	public String displaylogin() {
		return "login";
	}

		@RequestMapping("/sucess")
		public String login(@ModelAttribute ("admin") Admin adm,HttpServletRequest request)
		{
			System.out.println(adm.getUsername());
			System.out.println(adm.getPassword());
			if(adm.getUsername().equals("admin") && adm.getPassword().equals("admin123"))
			{
				HttpSession session=request.getSession(true);
			return "redirect:/employee/list";
			}
			else
				return "login-failed";
		}

	
	
	
}
