package com.comsats.restauto.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.comsats.restauto.entity.Dish;
import com.comsats.restauto.entity.OrderMain;

public class OrderMainDAO extends GenericDAO {
/**
 * @uml.property  name="newOrders"
 * @uml.associationEnd  multiplicity="(1 1)"
 */
public OrderMain newOrders = new OrderMain();
/**
 * @uml.property  name="newOrderDishesList"
 * @uml.associationEnd  multiplicity="(1 1)"
 */
public Dish newOrderDishesList = new Dish();
	
	/**
	 * @uml.property  name="query"
	 */
	String query;
	/**
	 * @uml.property  name="resultSet"
	 * @uml.associationEnd  multiplicity="(0 -1)" elementType="com.comsats.restauto.dao.OrderMainDAO"
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
	public ArrayList<OrderMain> getNewOrders(String status)
	{
		query = "select * from order_main where STATUS='"+ status +"'";	
		
		
		try {
			dbConn = this.getDbConnection();
			sqlStmt = dbConn.createStatement();
			resultSet = sqlStmt.executeQuery(query);
			while(resultSet != null && resultSet.next()) {
				
newOrders.list.add(new OrderMain(resultSet.getInt("id"),resultSet.getString("customer_id"),resultSet.getInt("table_id"),resultSet.getString("order_datetime"),resultSet.getString("customer_instruction"),resultSet.getInt("estimated_time_min"),resultSet.getString("actual_time"),resultSet.getString("created_on"),resultSet.getString("updated_on"),resultSet.getString("STATUS")));
				
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
		return newOrders.getList();
	}
	
	public ArrayList<OrderMain> getAllOrders(String startDate, String endDate)
	{
		if(startDate.equals("") && endDate.equals(""))
		{
			query = "select * from order_main";
		}
		else
		{
			query = "select * from order_main WHERE order_datetime BETWEEN '"+startDate+"' AND '"+endDate+1+"'";	
		}
			
		
		
		try {
			dbConn = this.getDbConnection();
			sqlStmt = dbConn.createStatement();
			resultSet = sqlStmt.executeQuery(query);
			while(resultSet != null && resultSet.next()) {
				
newOrders.list.add(new OrderMain(resultSet.getInt("id"),resultSet.getString("customer_id"),resultSet.getInt("table_id"),resultSet.getString("order_datetime"),resultSet.getString("customer_instruction"),resultSet.getInt("estimated_time_min"),resultSet.getString("actual_time"),resultSet.getString("created_on"),resultSet.getString("updated_on"),resultSet.getString("STATUS")));
				
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
		return newOrders.getList();
	}
	
	
	public OrderMain getNewOrdersDetails(Integer id)
	{
		query = "select * from order_main where id='"+ id +"'";	
		
		
		try {
			dbConn = this.getDbConnection();
			sqlStmt = dbConn.createStatement();
			resultSet = sqlStmt.executeQuery(query);
			while(resultSet != null && resultSet.next()) {
				
newOrders = new OrderMain(resultSet.getInt("id"),resultSet.getString("customer_id"),resultSet.getInt("table_id"),resultSet.getString("order_datetime"),resultSet.getString("customer_instruction"),resultSet.getInt("estimated_time_min"),resultSet.getString("actual_time"),resultSet.getString("created_on"),resultSet.getString("updated_on"),resultSet.getString("STATUS"));
				
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
		return newOrders;
	}
	
	public ArrayList<Dish> getNewOrderDishesList(Integer orderMainId)
	{
		query = "SELECT * FROM dish INNER JOIN order_detail ON dish.id=order_detail.dish_id where order_detail.order_id='"+orderMainId+"'";	
		
		
		try {
			dbConn = this.getDbConnection();
			sqlStmt = dbConn.createStatement();
			resultSet = sqlStmt.executeQuery(query);
			while(resultSet != null && resultSet.next()) {
				
newOrderDishesList.list.add(new Dish(resultSet.getInt("dish.id"),
		resultSet.getInt("dish.category_id"),
		resultSet.getString("dish.NAME"),
		resultSet.getString("dish.description"),
		resultSet.getString("dish.price"),
		resultSet.getString("dish.calories_per_100_grams"),
		resultSet.getString("dish.discount"),
		resultSet.getString("dish.average_cooking_time_min"),
		resultSet.getString("dish.picture"),
		resultSet.getString("dish.hot"),
		resultSet.getString("dish.unit"),
		resultSet.getString("dish.STATUS"),
		resultSet.getString("order_detail.quantity")));
				
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
		return newOrderDishesList.getList();
	}
	
	
	
}
