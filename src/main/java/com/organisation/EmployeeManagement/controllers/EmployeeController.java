package com.organisation.EmployeeManagement.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.organisation.EmployeeManagement.entity.Employee;
import com.organisation.EmployeeManagement.service.EmployeeService;



@Controller
@RequestMapping("/employee")
public class EmployeeController {
	@Autowired
	EmployeeService empService;
	
	@InitBinder
	public void doPreProcessing(WebDataBinder dataBinder)
	{
		//true inside the constructor meanss-> reduce all white spaces to null
	//remove leading and tralilng  white spaces
		StringTrimmerEditor ste=new StringTrimmerEditor(true);
		dataBinder.registerCustomEditor(String.class, ste);
	//meaning of above line-> just apply stringTrimmerEditor to all strings thaat comes in thr request	
	}
	
	
	
	@RequestMapping("/list")
	public String listEmp(Model theModel,HttpServletRequest request) {
		HttpSession session=request.getSession(false);
		
		List<Employee> emp =empService.getAllEmployee();
		theModel.addAttribute("employee", emp);
		System.out.println(emp);//my cross checking im printing here
		return "employee-list";
	}
	

	@RequestMapping("/addEmployee")
	public String addEmployee(Model theModel)
	{
		Employee employee=new Employee();
		theModel.addAttribute("employee",employee);
		return "employee-form";
	}
	
	@RequestMapping("/saveEmployee")
	public String saveEmployee(@Valid @ModelAttribute("employee") Employee theEmployee,BindingResult bind ) {

		System.out.println(bind);
		if(bind.hasErrors())
		{
			System.out.println(bind);
			return "employee-form";
		}
		else {
		empService.saveEmployee(theEmployee);
	     return "redirect:/employee/list";
		}
	}
	@RequestMapping("/searchDisplay")
	public String displayresult()
	{
		return "employee-search";
	}
	@RequestMapping("/searchForm")
	public String display() {
		return "employee-search-form";
	}
	
	@RequestMapping("/updateEmployee")
	public String updateEmployee(@RequestParam("id") String theEmployeeId, Model themodel) {
		Employee theEmployee = empService.getEmployee(theEmployeeId);
		themodel.addAttribute("employee", theEmployee);
		return "employee-update";
	}
	@RequestMapping("/searchEmployee")
public String searchEmployee(@RequestParam("id") String theId,Model theModel) {
		
		Employee emp=empService.getEmployee(theId);
		if( emp == null) {
			theModel.addAttribute("id", theId);
			return "search-error";
		}
		else {
			List<Employee> empList= empService.findEmployee(theId);
			System.out.println(empList);
			theModel.addAttribute("empList",empList);
			
			return "employee-search";
		}
			
	}


		
	
	@RequestMapping("/deleteEmployee")
	public String deleteEmployee(@RequestParam("id") String theemployeeId) {
		empService.deleteEmployee(theemployeeId);
		return "redirect:/employee/list";
	}
	
	
	
	
	
	
}
