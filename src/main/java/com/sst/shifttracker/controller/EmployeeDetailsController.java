package com.sst.shifttracker.controller;

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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sst.shifttracker.services.EmployeeService;
import com.sst.shifttracker.viewbeans.EmployeeDetailsVB;


/**
 * 
 * @author svallam
 *
 */

@Controller
@RequestMapping("/employeedetails.do")
public class EmployeeDetailsController {

	private Logger logger = LoggerFactory.getLogger(HomeController.class);


	@Autowired
	 EmployeeService  employeeService;
	
	

	public EmployeeService getEmployeeService() {
		return employeeService;
	}



	public void setEmployeeService(EmployeeService employeeService) {
		this.employeeService = employeeService;
	}



	/**
	 * Basic Home Controller
	 * 
	 * @return a welcome view name
	 */
	@RequestMapping(method = RequestMethod.GET)
	public String showEmployees(@Valid EmployeeDetailsVB employeeDetailsVB,BindingResult result, HttpServletRequest request,
			HttpServletResponse response,  Model employeeModel) {
		
		logger.debug("START :: HomeController : showEmployee()");
		List<EmployeeDetailsVB> employeeDetailsVBObjList = employeeService.getEmployeeList();
		employeeModel.addAttribute("empDetails",employeeDetailsVBObjList);
		
		return "employeedetails";

	}



}
