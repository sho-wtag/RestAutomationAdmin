package com.comsats.restauto.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.comsats.restauto.entity.Dish;


public class DishDAO extends GenericDAO {
	/**
	 * @uml.property  name="suggestion"
	 * @uml.associationEnd  multiplicity="(1 1)"
	 */
	public Dish suggestion = new Dish();
	
	/**
	 * @uml.property  name="query"
	 */
	String query;
	/**
	 * @uml.property  name="resultSet"
	 * @uml.associationEnd  multiplicity="(0 -1)" elementType="com.comsats.restauto.dao.DishDAO"
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
	
	public ArrayList<Dish> getSuggestions(String str) {
		if(str == "" || str == null)
		{
			query = "select * from dish";	
		}
		else
		{
			query = "select * from dish where NAME like '%"+ str +"%'";
		}
		try {
			dbConn = this.getDbConnection();
			sqlStmt = dbConn.createStatement();
			resultSet = sqlStmt.executeQuery(query);
			while(resultSet != null && resultSet.next()) {
				
				//System.out.println(count++ +" = "+resultSet.getString("NAME"));	
suggestion.list.add(new Dish(resultSet.getInt("id"),
		resultSet.getInt("category_id"),
		resultSet.getString("NAME"),
		resultSet.getString("description"),
		resultSet.getString("price"),
		resultSet.getString("calories_per_100_grams"),
		resultSet.getString("discount"),
		resultSet.getString("average_cooking_time_min"),
		resultSet.getString("picture"),
		resultSet.getString("hot"),
		resultSet.getString("unit"),
		resultSet.getString("STATUS")));
				
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

	public ArrayList<Dish> getAllDishes(int catID) {
		query = "select * from dish where category_id = '"+catID+"'";
		try {
			dbConn = this.getDbConnection();
			sqlStmt = dbConn.createStatement();
			resultSet = sqlStmt.executeQuery(query);
			while(resultSet != null && resultSet.next()) {
				
				//System.out.println(count++ +" = "+resultSet.getString("NAME"));	
suggestion.list.add(new Dish(resultSet.getInt("id"),
		resultSet.getInt("category_id"),
		resultSet.getString("NAME"),
		resultSet.getString("description"),
		resultSet.getString("price"),
		resultSet.getString("calories_per_100_grams"),
		resultSet.getString("discount"),
		resultSet.getString("average_cooking_time_min"),
		resultSet.getString("picture"),
		resultSet.getString("hot"),
		resultSet.getString("unit"),
		resultSet.getString("STATUS")));
				
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
