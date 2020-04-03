package com.organisation.EmployeeManagement.entity;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.Range;
import org.springframework.format.annotation.DateTimeFormat;
@Entity
@Table(name="employee_management")
public class Employee {
	@Id
	@NotBlank(message="Employee id cannot be null")
	
	private String employee_id;
	@NotBlank(message="first name cannot be null")
	private String firstName;
	@NotBlank(message="last name cannot be null")
	private String lastName;
	@NotBlank(message="Email ID cannot be null")
		private String mail_id;
	@NotBlank(message="Contact Number cannot be null")
	@Pattern(regexp="(^$|[0-9]{10})",message = "Enter 10 digit mobile number")
	private String contact_number;
	@NotBlank(message="gender cannot be null")
	
	private String gender;
	@Min(value = 18,message = "minimum age is 18")
	@NotBlank(message="age cannot be null")
	private String age;
	@NotBlank(message="job location cannot be null")
	private String job_location;
	@NotBlank(message="Business Unit cannot be null")
	@Column(name="Business_Unit")
	private String bu;
			private int project_id;
	@Column(name="Job_title")
	@NotBlank(message="Job Title cannot be null")
	private String title;
	@Column(name="DateOfJoining")
	private Date doj;
	
	@Column(name="Salary")
	@Min(message="Salary minimum value is 1000", value = 1000)
	private double salary;
	
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getMail_id() {
		return mail_id;
	}
	public void setMail_id(String mail_id) {
		this.mail_id = mail_id;
	}
	public String getContact_number() {
		return contact_number;
	}
	public void setContact_number(String contact_number) {
		this.contact_number = contact_number;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getJob_location() {
		return job_location;
	}
	public void setJob_location(String job_location) {
		this.job_location = job_location;
	}
	public String getBu() {
		return bu;
	}
	public void setBu(String bu) {
		this.bu = bu;
	}
	public int getProject_id() {
		return project_id;
	}
	public void setProject_id(int project_id) {
		this.project_id = project_id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Date getDoj() {
		return doj;
	}
	public void setDoj(Date doj) {
		this.doj = doj;
	}
	public double getSalary() {
		return salary;
	}
	public void setSalary(double salary) {
		this.salary = salary;
	}
	public Employee(String employee_id, String firstName, String lastName, String mail_id, String contact_number,
			String gender, String age, String job_location, String bu, int project_id, String title, Date doj,
			double salary) {
		super();
		this.setEmployee_id(employee_id);
		this.firstName = firstName;
		this.lastName = lastName;
		this.mail_id = mail_id;
		this.contact_number = contact_number;
		this.gender = gender;
		this.age = age;
		this.job_location = job_location;
		this.bu = bu;
		this.project_id = project_id;
		this.title = title;
		this.doj = doj;
		this.salary = salary;
	}
	public Employee() {
		super();
	}
	@Override
	public String toString() {
		return "Employee [employee_id=" + getEmployee_id() + ", firstName=" + firstName + ", lastName=" + lastName
				+ ", mail_id=" + mail_id + ", contact_number=" + contact_number + ", gender=" + gender + ", age=" + age
				+ ", job_location=" + job_location + ", bu=" + bu + ", project_id=" + project_id + ", title=" + title
				+ ", doj=" + doj + ", sal=" + salary + "]";
	}
	public String getEmployee_id() {
		return employee_id;
	}
	public void setEmployee_id(String employee_id) {
		this.employee_id = employee_id;
	}
	
	
}