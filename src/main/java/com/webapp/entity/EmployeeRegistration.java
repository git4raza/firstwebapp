package com.webapp.entity;

import javax.persistence.*;

@Entity
@Table(name="employe_basic_information")
public class EmployeeRegistration {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="employee_ID",length=45)
	private long employeeID;
	
	@Column(name="First_Name",length=45)
	private String firstName;
	
	@Column(name="Last_Name",length=45)
	private String lastName;
	
	@Column(name="Deprtment")
	private String department;
	
	@Column(name="Position")
	private String position;
	
	@Column(name="E_mail", unique=true,length=128)
	private String email;
	
	@Column(name="Mobile",length=12)
	private String mobile;
	
	@Column(name="Date_Of_Birth")
	private String dateOfBirth;
	
	@Column(name="Address")
	private String address;

	@Column(name="gender")
	private String gender;
	
	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public long getEmployeeID() {
		return employeeID;
	}

	public void setEmployeeID(long employeeID) {
		this.employeeID = employeeID;
	}

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

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	

}
