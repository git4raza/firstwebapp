package com.webapp.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webapp.entity.EmployeeLogin;
import com.webapp.repository.EmployeeLoginRepository;

@Service
public class EmployeeLoginService {
	@Autowired
	EmployeeLoginRepository employeeloginrepo;

	public void saveLoginDetails(EmployeeLogin employeeLogin) {
		employeeloginrepo.save(employeeLogin);

	}

	public boolean login(String email, String password) {
		Optional<EmployeeLogin> employeelogin = employeeloginrepo.findByemail(email);

		if (employeelogin.isPresent()) {
			EmployeeLogin user = employeelogin.get();
			boolean status = user.getPassword().equals(password);
			return status;
		} else {
			return false; 
		}
		
	}

	public String sendPassword(String email) {
		Optional<EmployeeLogin> findByemail = employeeloginrepo.findByemail(email);
		EmployeeLogin employeeLogin = findByemail.get();
		String password = employeeLogin.getPassword();
		return password;
		
	}

}
