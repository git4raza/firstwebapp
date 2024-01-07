package com.webapp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.webapp.entity.EmployeeLogin;
import com.webapp.entity.EmployeeRegistration;
import com.webapp.service.EmployeeLoginService;
import com.webapp.service.EmployeeRegistrationService;
import com.webapp.util.EmailService;

@Controller
public class LoginAndRegistrationController {
	@Autowired
	EmployeeRegistrationService regservice;

	@Autowired
	EmployeeLoginService loginservice;

	@Autowired
	EmailService emailservice;

	// http://localhost:8080/view-login-page
	@RequestMapping("/view-login-page")
	public String loginPage() {
		return "login";

	}

	@RequestMapping("/loginController")
	public String login(@RequestParam("Email") String email, @RequestParam("password") String password, Model model) {
		boolean status = loginservice.login(email, password);
		model.addAttribute("error",
				"It Seems you have entered wrong username/password so please enter correct password or if not signed up yet then please sign up first");

		if (status) {
			return "dashboard";
		} else {
			return "signUp";
		}
	}

	@RequestMapping("/SignupController")
	public String signUpPage() {
		return "signUp";
	}

	@RequestMapping("/saveReg")
	public String saveRegistration(EmployeeRegistration employeereg, @RequestParam("email") String email, Model model) {
		regservice.saveRegistration(employeereg);
		model.addAttribute("employeereg", employeereg);
		emailservice.sendEmail(email, "Welcome to Shivaraj IT Solutions Pvt Ltd- Your New Adventure Begins!", "Dear,\r\n"
				+ "\r\n"
				+ "We're thrilled to welcome you to [Your Company Name]! 🎉\r\n"
				+ "\r\n"
				+ "Thank you for choosing us. Your account is now active, and you're all set to explore our offerings. We're excited to have you on board and look forward to serving you at every step of your journey with Shivaraj IT Solutions Pvt Ltd\r\n"
				+ "\r\n"
				+ "");
		return "set_username_password";
	}

	@RequestMapping("/setUsername_Password")
	public String saveLoginDetails(EmployeeLogin employeeLogin, Model model) {
		loginservice.saveLoginDetails(employeeLogin);
		model.addAttribute("msg", "Employee Details Saved Successfully!!!");
		return "signUp";

	}

	@RequestMapping("/getAllEmployeeReg")
	public String getAllEmployeeReg(Model model) {
		List<EmployeeRegistration> reg = regservice.getAllEmployeeReg();
		model.addAttribute("registrations", reg);
		return "list_of_All_EmployeeReg";

	}

	@RequestMapping("/deleteEmployeeReg")
	public String deleteRegById(@RequestParam("id") long id, Model model) {
		regservice.deleteRegById(id);
		List<EmployeeRegistration> reg = regservice.getAllEmployeeReg();
		model.addAttribute("registrations", reg);
		model.addAttribute("msg", "Employee Record Deleted Successfully!!!");
		return "list_of_All_EmployeeReg";

	}

	@RequestMapping("/getEmployeeRegById")
	public String getEmployeeRegistrationById(@RequestParam("id") long id, Model model) {
		EmployeeRegistration employeeReg = regservice.getEmployeeRegistrationById(id);
		model.addAttribute("reg", employeeReg);
		return "Update_EmployeeRegistration";

	}

	@RequestMapping("/updateEmployeeReg")
	public String updateEmployeeRegistration(EmployeeRegistration employeereg, Model model) {
		regservice.saveRegistration(employeereg);
		List<EmployeeRegistration> reg = regservice.getAllEmployeeReg();
		model.addAttribute("registrations", reg);
		model.addAttribute("msg", "Employee Details Has Been Updated  Successfully!!!");
		return "list_of_All_EmployeeReg";
	}

	@RequestMapping("/forgotpassword")
	public String forgotpssword() {
		return "forgotpassword";

	}

	@RequestMapping("/sendpassword")
	public String sendPassword(@RequestParam("email") String email, Model model) {
		String password = loginservice.sendPassword(email);
		model.addAttribute("password", password);
		System.out.println(password);
		model.addAttribute("msg","Please check your email for a message with your password and We sent your password to'" + email+ "'");
		emailservice.sendEmail(email, "Password Recovery - Your New Login Details", "Dear,\r\n" + "\r\n"
				+ "We hope this email finds you well. As requested, we are providing your account's old password for your convenience:\r\n"
				+ "\r\n" + "Old Password: \"'"+password+"'\"\r\n" + "\r\n"
				+ "Please log in using this password and consider updating it for security. If you encounter any issues, reach out to us at hiremathshivaraj111@gmail.com or 7349419285.\r\n"
				+ "\r\n" + "Best regards,\r\n" + "Shivaraj Hiremath");
		return "login";

	}
}
