package com.webapp.service;
import java.util.List;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webapp.entity.EmployeeLogin;
import com.webapp.entity.EmployeeRegistration;
import com.webapp.repository.EmployeeLoginRepository;
import com.webapp.repository.EmployeeRepository;

@Service
public class EmployeeRegistrationService{
	@Autowired
	EmployeeRepository employeerepo;
	

	public void saveRegistration(EmployeeRegistration employeereg) {
		employeerepo.save(employeereg);
	}
	
	public List<EmployeeRegistration> getAllEmployeeReg() {
		List<EmployeeRegistration> regs = employeerepo.findAll();
		return regs;
	}

	public void deleteRegById(long id) {
		employeerepo.deleteById(id);
		
	}

	public EmployeeRegistration getEmployeeRegistrationById(long id) {
	EmployeeRegistration employeeReg = employeerepo.findById(id).get();
	return employeeReg;
		
				
	}

	
	
}
