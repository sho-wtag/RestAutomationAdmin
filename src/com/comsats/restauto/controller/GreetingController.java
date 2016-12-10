package com.comsats.restauto.controller;

import java.util.ArrayList;

import com.comsats.restauto.dao.GreetingDAO;
import com.comsats.restauto.entity.Greeting;


public class GreetingController {
	/**
	 * @uml.property  name="greetingDAO"
	 * @uml.associationEnd  multiplicity="(1 1)"
	 */
	GreetingDAO greetingDAO;
	
	public GreetingController(){
		greetingDAO = new  GreetingDAO();
	}
	public void saveGreeting(Greeting newGreeting){
		String insertQuery = "insert into greeting_messages (title,description,display_date,banner,STATUS) values('"
				+ newGreeting.getGreetingTitle() + "','" + newGreeting.getGreetingDescription() + "','"+newGreeting.getGreetingDate()+"'" +
						",'"+newGreeting.getBanner()+"','"+newGreeting.getStatus()+"')";
		greetingDAO.executeUpdate(insertQuery);
	}
	public ArrayList<Greeting> getAllGreetingsList(String greetingId, String title){
		ArrayList<Greeting> greetingList=greetingDAO.getGreetingMessages(greetingId, title);
		
		return greetingList;
		
		
	}
	public void deleteGreeting(String id){
		String delQuery = "DELETE FROM greeting_messages WHERE id = "+ id;
		
		greetingDAO.executeUpdate(delQuery);
	}
	
	public void updateGreeting(Greeting newGreeting){
		String updateQuery = "update greeting_messages set title='"+newGreeting.getGreetingTitle()+"',description = '"+newGreeting.getGreetingDescription()+"',display_date = '"+newGreeting.getGreetingDate()+"',banner = '"+newGreeting.getBanner()+"',STATUS='"+newGreeting.getStatus()+"' where id='"+newGreeting.getGreetingId()+"' ";
		greetingDAO.executeUpdate(updateQuery);
		
		
		
	}
}
