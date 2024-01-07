package com.webapp.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.webapp.entity.EmployeeLogin;
import com.webapp.entity.EmployeeRegistration;

public interface EmployeeRepository extends JpaRepository<EmployeeRegistration, Long>{


}
