package com.sst.shifttracker.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sst.shifttracker.services.UserService;
import com.sst.shifttracker.viewbeans.EmployeeDetails;
import com.sst.shifttracker.viewbeans.UserDetailsVB;
//import com.sun.xml.bind.v2.schemagen.xmlschema.List;

/**
 * @author
 * 
 *         Custom handler for the welcome view.
 */

@Controller
@RequestMapping("/employeedetails.do")
public class EmployeeDetailsController {

	private Logger logger = LoggerFactory.getLogger(HomeController.class);
	private final String USER_VB_MODELNAME = "userVB";

	@Autowired
	private UserService userService;

	/**
	 * Basic Home Controller
	 * 
	 * @return a welcome view name
	 */
	@RequestMapping(method = RequestMethod.GET)
	public String showEmployees(Model employeeModel) {
		logger.debug("START :: HomeController : showHome()");
       
		EmployeeDetails emp = new EmployeeDetails();
		emp.setEmpId(123);
		emp.setEmployeeName("aaa");
		emp.setProject("abc");
		emp.setTeam("ttt");
		
		EmployeeDetails emp1 = new EmployeeDetails();
		emp1.setEmpId(123);
		emp1.setEmployeeName("asdf");
		emp1.setProject("asdf");
		emp1.setTeam("tyttt");
		
		EmployeeDetails emp2 = new EmployeeDetails();
		emp2.setEmpId(123);
		emp2.setEmployeeName("yuiyu");
		emp2.setProject("fgjhf");
		emp2.setTeam("yuiytu");
		
		EmployeeDetails emp3 = new EmployeeDetails();
		emp3.setEmpId(123);
		emp3.setEmployeeName("ertet");
		emp3.setProject("fhgfh");
		emp3.setTeam("uyiyui");
		
		
		
		List<EmployeeDetails> empDetails = new ArrayList<EmployeeDetails>();
		
		empDetails.add(emp);
		empDetails.add(emp1);
		empDetails.add(emp2);
		empDetails.add(emp3);
		employeeModel.addAttribute("empDetails",empDetails);
		
		return "employeedetails";

	}

	/**
	 * @param userDetailsVB
	 * @param result
	 * @param request
	 * @param response
	 * @param patientModel
	 * @return user Information view name
	 */
	@RequestMapping(method = RequestMethod.POST)
	public String processSignIn(@Valid UserDetailsVB userDetailsVB,
			BindingResult result, HttpServletRequest request,
			HttpServletResponse response, Model userModel) {
		
		logger.debug("START :: HomeController : createUser() userDetailsVB: {} ", userDetailsVB);
				

		UserDetailsVB extUserVB = userService.getUserDetails(userDetailsVB
				.getUserName(), userDetailsVB.getPassword());
		
		if(extUserVB == null) {
			return "home";
		}

		// Redirection to avoid multiple submits PRG pattern

		return "redirect:employeedetails.do";

	}
	
	@ModelAttribute
	public UserDetailsVB userDetailsVB() {
		return new UserDetailsVB();
	}

}
