package com.organisation.EmployeeManagement.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.organisation.EmployeeManagement.entity.Employee;
import com.organisation.EmployeeManagement.DAO.EmployeeDAO;
@Service
public class EmployeeServiceImpl implements EmployeeService {
	@Autowired
	EmployeeDAO EmployeeDAOImpl;
	
	@Transactional
	@Override
	public List<Employee> getAllEmployee() {
		// TODO Auto-generated method stub
		return EmployeeDAOImpl.getAllEmployee();
	}

	@Override
	@Transactional
	public void saveEmployee(Employee theEmployee) {
		// TODO Auto-generated method stub
EmployeeDAOImpl.saveEmployee(theEmployee);
	}

	@Override
	@Transactional
	public Employee getEmployee(String theId) {
		// TODO Auto-generated method stub
		Employee emp=EmployeeDAOImpl.getEmployee(theId);
		return emp;
	}

	@Override
	@Transactional
	public void deleteEmployee(String theId) {
		// TODO Auto-generated method stub
   EmployeeDAOImpl.deleteEmployee(theId);
	}

	@Override
	@Transactional
	public List<Employee> findEmployee(String theId) {
		// TODO Auto-generated method stub
		List<Employee> emp=EmployeeDAOImpl.findEmployee(theId);
		return emp;
	}

}
