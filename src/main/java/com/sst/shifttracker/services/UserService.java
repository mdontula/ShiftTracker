package com.sst.shifttracker.services;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.sst.shifttracker.DTOs.UserDTO;
import com.sst.shifttracker.dao.UserDAO;
import com.sst.shifttracker.viewbeans.UserDetailsVB;
@Component
public class UserService {

	private Logger logger = LoggerFactory.getLogger(UserService.class);
	@Autowired
	private UserDAO userDAO;

	public UserDAO getUserDAO() {
		return userDAO;
	}

	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}

	public UserDetailsVB getUserDetails(String userName, String password) {
		
	UserDTO userDTO  = 	userDAO.getUserDetails(userName, password);
	 if(userDTO == null)
		 return null;
	 UserDetailsVB userDetails = new UserDetailsVB();
	 
	 userDetails.setUserName(userDTO.getUserName());
	 userDetails.setPassword(userDTO.getPassword());
		
		return userDetails;
	}

}
