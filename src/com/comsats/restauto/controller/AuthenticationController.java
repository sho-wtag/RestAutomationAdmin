package com.comsats.restauto.controller;

import com.comsats.restauto.dao.UserDAO;
import com.comsats.restauto.entity.User;

public class AuthenticationController {

	/**
	 * @uml.property  name="userDAO"
	 * @uml.associationEnd  multiplicity="(1 1)"
	 */
	UserDAO userDAO;

	public AuthenticationController() {
		userDAO = new UserDAO();
	}

	public User getAuthorizedUserRole(String userName, String password) {
		
		User user = userDAO.getSingleUser(userName, password);
		if (user != null) {
			String dbPassword = user.getPassword();
			if (password.equals(dbPassword)) {
				return user;
				
			}
		}
		return null;
	}

}
