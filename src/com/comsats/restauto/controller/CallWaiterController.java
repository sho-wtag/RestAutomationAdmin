package com.comsats.restauto.controller;

import java.util.ArrayList;

import com.comsats.restauto.dao.CallWaiterDAO;
import com.comsats.restauto.dao.GenericDAO;
import com.comsats.restauto.entity.CallWaiter;

public class CallWaiterController extends GenericDAO {
	
	/**
	 * @uml.property  name="dbConnectionHandler"
	 * @uml.associationEnd  multiplicity="(1 1)"
	 */
	GenericDAO dbConnectionHandler;
	
	public CallWaiterController()
	{
		dbConnectionHandler = new GenericDAO();
	}
	
	public ArrayList<CallWaiter> getNewCallsList(String status)
	{
		ArrayList<CallWaiter> list;
		CallWaiterDAO newCalls = new CallWaiterDAO();
		list = newCalls.getNewCallsList(status);
		return list;
	}
	
	public int getCount()
	{
		CallWaiterDAO countCalls = new CallWaiterDAO();
		return countCalls.getRowCount(); 
	}

public void deleteCall(int id) {
		
		String insertQuery = "DELETE FROM waiter_call WHERE id='"+id+"'";
		dbConnectionHandler.executeUpdate(insertQuery);
		
	}

}
