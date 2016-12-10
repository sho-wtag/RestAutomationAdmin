package com.comsats.restauto.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.comsats.restauto.entity.Register;

public class RegisterDAO extends GenericDAO{
	/**
	 * @uml.property  name="suggestion"
	 * @uml.associationEnd  multiplicity="(1 1)"
	 */
	public Register suggestion = new Register();
	
	/**
	 * @uml.property  name="query"
	 */
	String query;
	/**
	 * @uml.property  name="resultSet"
	 * @uml.associationEnd  multiplicity="(0 -1)" elementType="com.comsats.restauto.dao.RegisterDAO"
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
	
	public ArrayList<Register> getSuggestions(String str) {
		
		if(str == "" || str == null)
		{
			query = "select * from user";	
		}
		else
		{
			query = "select * from user where user_name like '%"+ str +"%'";
		}
		try {
			dbConn = this.getDbConnection();
			sqlStmt = dbConn.createStatement();
			resultSet = sqlStmt.executeQuery(query);
			while(resultSet != null && resultSet.next()) {
				
				//System.out.println(count++ +" = "+resultSet.getString("NAME"));	
suggestion.list.add(new Register(resultSet.getInt("id"), resultSet.getString("role_name"), resultSet.getString("user_name"), resultSet.getString("password"), resultSet.getString("first_name"), resultSet.getString("last_name"), resultSet.getString("email_Address"), resultSet.getString("address"), resultSet.getString("cnic"), resultSet.getString("telephone"), resultSet.getString("image"), resultSet.getString("STATUS") ));
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
	
public Register getUserProfile(int id) {
		
	        Register obj = null;
			query = "select * from user where id = '"+id+"'";
		
		try {
			dbConn = this.getDbConnection();
			sqlStmt = dbConn.createStatement();
			resultSet = sqlStmt.executeQuery(query);
			while(resultSet != null && resultSet.next()) {
				
				//System.out.println(count++ +" = "+resultSet.getString("NAME"));	
				obj = new Register(resultSet.getInt("id"), resultSet.getString("role_name"), resultSet.getString("user_name"), resultSet.getString("password"), resultSet.getString("first_name"), resultSet.getString("last_name"), resultSet.getString("email_Address"), resultSet.getString("address"), resultSet.getString("cnic"), resultSet.getString("telephone"), resultSet.getString("image"), resultSet.getString("STATUS") );
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
		return obj;
	}


}
