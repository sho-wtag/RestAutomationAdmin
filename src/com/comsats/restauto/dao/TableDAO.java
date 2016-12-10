package com.comsats.restauto.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.comsats.restauto.entity.Table;

public class TableDAO extends GenericDAO {

	/**
	 * @uml.property  name="suggestion"
	 * @uml.associationEnd  multiplicity="(1 1)"
	 */
	public Table suggestion = new Table();
	
	/**
	 * @uml.property  name="query"
	 */
	String query;
	/**
	 * @uml.property  name="resultSet"
	 * @uml.associationEnd  multiplicity="(0 -1)" elementType="com.comsats.restauto.dao.TableDAO"
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
	public ArrayList<Table> getSuggestionsList(String str)
	{
		if(str == "" || str == null)
		{
			query = "select id,number,description,STATUS from table_info";	
		}
		else
		{
			query = "select id,number,description,STATUS from table_info where number like '%"+ str +"%'";
		}
		try {
			dbConn = this.getDbConnection();
			sqlStmt = dbConn.createStatement();
			resultSet = sqlStmt.executeQuery(query);
			while(resultSet != null && resultSet.next()) {
				
				//System.out.println(count++ +" = "+resultSet.getString("NAME"));	
suggestion.list.add(new Table(resultSet.getInt("id"),resultSet.getInt("number"),resultSet.getString("description"),resultSet.getString("STATUS")));
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
	
	public int checkTables(int Id)
	{
		String query = "select * from order_main where table_id = '"+Id+"'";
		
		int rows = 0;
		try {
			dbConn = this.getDbConnection();
			sqlStmt = dbConn.createStatement();
			resultSet = sqlStmt.executeQuery(query);
			
			while(resultSet != null && resultSet.next()) {
				
				
				rows++;
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
		return rows;
	}
	
}
