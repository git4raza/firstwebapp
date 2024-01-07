package com.webapp.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.webapp.entity.EmployeeLogin;

import java.util.Optional;

import javax.persistence.Id;


public interface EmployeeLoginRepository extends JpaRepository<EmployeeLogin, Long>{

	Optional<EmployeeLogin> findByemail(String email);

}
