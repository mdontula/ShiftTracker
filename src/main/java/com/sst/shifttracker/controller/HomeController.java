package com.sst.shifttracker.controller;

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
import com.sst.shifttracker.viewbeans.UserDetailsVB;

/**
 * @author
 * 
 *         Custom handler for the welcome view.
 */

@Controller
@RequestMapping("/login.do")
public class HomeController {

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
	public String showHome() {
		logger.debug("START :: HomeController : showHome()");


		return "home";

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
				
/*
		UserDetailsVB extUserVB = userService.getUserDetails(userDetailsVB
				.getUserName(), userDetailsVB.getPassword());
		
		if(extUserVB == null) {
			return "home";
		}
*/
		// Redirection to avoid multiple submits PRG pattern

		return "redirect:employeedetails.do";

	}
	
	@ModelAttribute
	public UserDetailsVB userDetailsVB() {
		return new UserDetailsVB();
	}

}
