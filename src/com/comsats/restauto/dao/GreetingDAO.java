package com.comsats.restauto.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.comsats.restauto.entity.Greeting;

public class GreetingDAO extends GenericDAO{
	
public ArrayList<Greeting> getGreetingMessages(String greetingId, String greetingDate) {
		
		ArrayList<Greeting> greetingList=new ArrayList<Greeting>();
		String query = "";
		ResultSet resultSet = null;
		Connection dbConn = null;
		Statement sqlStmt = null;
		if(greetingId != null && !"".equals(greetingId)  )
		{
			query = "select * from greeting_messages where id = "+ greetingId;
		} else if (greetingDate != null && !"".equals(greetingDate)) {
		
			query = "select * from greeting_messages where display_date = '"+ greetingDate+"'";
		} else 
		{
			query = "select *  from  greeting_messages";	
		}
		try {
			dbConn = this.getDbConnection();
			sqlStmt = dbConn.createStatement();
			resultSet = sqlStmt.executeQuery(query);
			while(resultSet != null && resultSet.next()) {
				Greeting greeting=new Greeting();
				greeting.setGreetingId(resultSet.getString("id"));
				greeting.setBanner(resultSet.getString("banner"));
				greeting.setCreatedOn(resultSet.getDate("created_on"));
				greeting.setGreetingDate(resultSet.getString("display_date"));
				greeting.setGreetingDescription(resultSet.getString("description"));
				greeting.setGreetingTitle(resultSet.getString("title"));
				greeting.setStatus(resultSet.getString("STATUS"));
				greeting.setUpdatedOn(resultSet.getDate("updated_on"));
				greetingList.add(greeting);
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
		return greetingList;
	}

}
