package com.organisation.EmployeeManagement.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.organisation.EmployeeManagement.entity.Employee;

@Repository
public class EmployeeDAOImpl implements EmployeeDAO {
	@Autowired
	private SessionFactory factory;
	
	
	@Transactional
	@Override
	public List<Employee> getAllEmployee() {
		// TODO Auto-generated method stub
		Session session=factory.getCurrentSession();
		Query<Employee> query=session.createQuery("from Employee order by employee_id",Employee.class);
		List<Employee> listOfEmployees= query.getResultList();
		System.out.println("**");
		listOfEmployees.forEach(s -> System.out.println(s));
		System.out.println("**");
		return listOfEmployees;
	}

	@Override
	public void saveEmployee(Employee theEmployee) {
		// TODO Auto-generated method stub
		Session session=factory.getCurrentSession();
		session.saveOrUpdate(theEmployee);
	}

	@Override
	public Employee getEmployee(String theId) {
		// TODO Auto-generated method stub
		Session session=factory.getCurrentSession();
		Employee employee=session.get(Employee.class, theId);
		return employee;
	}

	@Override
	public void deleteEmployee(String theId) {
		// TODO Auto-generated method stub

		Session session = factory.getCurrentSession();
		Query thequery = session.createQuery("delete from Employee where employee_id = :theId");
		thequery.setParameter("theId", theId);
		thequery.executeUpdate();
	}

	@Override
	public List<Employee> findEmployee(String theId) {
		// TODO Auto-generated method stub
		Session session= factory.getCurrentSession();
		Query<Employee> query= session.createQuery("from Employee where employee_id=:theId",Employee.class);
		query.setParameter("theId", theId);
		List<Employee> list= query.getResultList();
		return list;
	}

	

}
