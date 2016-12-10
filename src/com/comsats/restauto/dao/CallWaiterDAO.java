package com.comsats.restauto.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.comsats.restauto.entity.CallWaiter;

public class CallWaiterDAO extends GenericDAO{
	/**
	 * @uml.property  name="suggestion"
	 * @uml.associationEnd  multiplicity="(1 1)"
	 */
	public CallWaiter suggestion = new CallWaiter();
	
	/**
	 * @uml.property  name="query"
	 */
	String query;
	/**
	 * @uml.property  name="resultSet"
	 * @uml.associationEnd  multiplicity="(0 -1)" elementType="com.comsats.restauto.dao.CallWaiterDAO"
	 */
	ResultSet resultSet = null;
	/**
	 * @uml.property  name="dbConn"
	 */
	Connection dbConn = null;
	/**
	 * @uml.property  name="sqlStmt"
	 */
	Statement sqlStmt = null;
	
	public ArrayList<CallWaiter> getNewCallsList(String status)
	{
		
			query = "select * from waiter_call where STATUS = '"+status+"'";	
		
		try {
			dbConn = this.getDbConnection();
			sqlStmt = dbConn.createStatement();
			resultSet = sqlStmt.executeQuery(query);
			while(resultSet != null && resultSet.next()) {
				
				//System.out.println(count++ +" = "+resultSet.getString("NAME"));	
suggestion.list.add(new CallWaiter(resultSet.getInt("id"),resultSet.getInt("table_no"),resultSet.getString("date"),resultSet.getString("STATUS")));
//System.out.print(suggestion.list.get(count++).getCatName());
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (resultSet != null) {
					resultSet.close();
				}
				if (sqlStmt != null) {
					sqlStmt.close();
				}
				if (dbConn != null) {
					dbConn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return suggestion.getList();
	}
	

	public int getRowCount()
	{
		int i = 0;
			query = "select * from waiter_call where STATUS = 'new'";	
		
		try {
			dbConn = this.getDbConnection();
			sqlStmt = dbConn.createStatement();
			resultSet = sqlStmt.executeQuery(query);
			while(resultSet != null && resultSet.next()) {
					i++;			
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (resultSet != null) {
					resultSet.close();
				}
				if (sqlStmt != null) {
					sqlStmt.close();
				}
				if (dbConn != null) {
					dbConn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return i;
	}

}
