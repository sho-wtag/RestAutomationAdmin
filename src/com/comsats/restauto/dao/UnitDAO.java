package com.comsats.restauto.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.comsats.restauto.entity.Unit;

public class UnitDAO extends GenericDAO {

	/**
	 * @uml.property  name="suggestion"
	 * @uml.associationEnd  multiplicity="(1 1)"
	 */
	public Unit suggestion = new Unit();
	
	/**
	 * @uml.property  name="query"
	 */
	String query;
	/**
	 * @uml.property  name="resultSet"
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
	public ArrayList<Unit> getSuggestionsList(String str)
	{
		if(str == "" || str == null)
		{
			query = "select id,name,STATUS from unit";	
		}
		else
		{
			query = "select id,name,STATUS from unit where name like '%"+ str +"%'";
		}
		try {
			dbConn = this.getDbConnection();
			sqlStmt = dbConn.createStatement();
			resultSet = sqlStmt.executeQuery(query);
			while(resultSet != null && resultSet.next()) {
				
				//System.out.println(count++ +" = "+resultSet.getString("NAME"));	
suggestion.list.add(new Unit(resultSet.getInt("id"),resultSet.getString("name"),resultSet.getString("STATUS")));
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
	
}
