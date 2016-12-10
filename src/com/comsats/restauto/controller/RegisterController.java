package com.comsats.restauto.controller;

import java.util.ArrayList;

import com.comsats.restauto.dao.GenericDAO;
import com.comsats.restauto.dao.RegisterDAO;
import com.comsats.restauto.entity.Register;

public class RegisterController {
	/**
	 * @uml.property  name="dbConnectionHandler"
	 * @uml.associationEnd  multiplicity="(1 1)"
	 */
	GenericDAO dbConnectionHandler;
	
	public RegisterController()
	{
		dbConnectionHandler = new GenericDAO();
	}
	
	public void saveUser(Register newUser)
	{
		String insertQuery = "insert into user (role_name, user_name, password, first_name, last_name, email_address, address, cnic, telephone, image, STATUS) " +
				"values ('"+newUser.getUserRole()+"', '"+newUser.getUserName()+"', '"+newUser.getUserPassword()+"'" +
						", '"+newUser.getUserFirstName()+"', '"+newUser.getUserLastName()+"', '"+newUser.getUserEmail()+"'" +
								", '"+newUser.getUserAddress()+"', '"+newUser.getUserCnic()+"', '"+newUser.getUserTele()+"'" +
										", '"+newUser.getUserImage()+"', '"+newUser.getStatus()+"')";
		dbConnectionHandler.executeUpdate(insertQuery);
	}
	public void updateUser(Register updateUser) {

		String insertQuery = "update user set role_name = '"+updateUser.getUserRole()+"', user_name = '"+updateUser.getUserName()+"'" +
				", password = '"+updateUser.getUserPassword()+"', first_name = '"+updateUser.getUserFirstName()+"'" +
						", last_name = '"+updateUser.getUserLastName()+"', email_address = '"+updateUser.getUserEmail()+"'" +
								", address = '"+updateUser.getUserAddress()+"', cnic = '"+updateUser.getUserCnic()+"'" +
										", telephone = '"+updateUser.getUserTele()+"', image = '"+updateUser.getUserImage()+"'" +
												", STATUS = '"+updateUser.getStatus()+"' where id='"+updateUser.getUserID()+"'";
		dbConnectionHandler.executeUpdate(insertQuery);
		
	}
	
public void deleteUser(int id) {
		
		String insertQuery = "DELETE FROM user WHERE id='"+id+"'";
		dbConnectionHandler.executeUpdate(insertQuery);
		
	}
public ArrayList<Register> suggestUser(String str) {
		
		ArrayList<Register> list;
		RegisterDAO listSuggest = new RegisterDAO();
		list =  listSuggest.getSuggestions(str);
		return  list;
		
	}

public Register getProfile(int id)
{
	RegisterDAO registerDao = new RegisterDAO();
	 return registerDao.getUserProfile(id);
}
	
}
