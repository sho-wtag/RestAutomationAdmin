package com.comsats.restauto.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import com.comsats.restauto.entity.DailyChart;

public class ChartDAO extends GenericDAO{
	public DailyChart suggestion = new DailyChart();
	
	String query;
	ResultSet resultSet = null;
	Connection dbConn = null;
	Statement sqlStmt = null;
	
	public ArrayList<DailyChart> getDailyChart() {
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String Date = dateFormat.format(date);
		query = "SELECT dc.name categoryName, COUNT(DISTINCT od.dish_id) total"+
				" FROM dish_category dc, dish d, order_detail od"+ 
				" WHERE d.category_id = dc.id"+
				" AND od.dish_id = d.id"+
				" AND DATE(od.created_on) >= DATE('"+Date+"') AND DATE(od.created_on) <= DATE('"+Date+"')"+
				" GROUP BY dc.name"+
				" ORDER BY dc.name ASC";
		try {
			dbConn = this.getDbConnection();
			sqlStmt = dbConn.createStatement();
			resultSet = sqlStmt.executeQuery(query);
			while(resultSet != null && resultSet.next()) {
				
				//System.out.println(count++ +" = "+resultSet.getString("NAME"));	
suggestion.list.add(new DailyChart(resultSet.getString("categoryName"),resultSet.getInt("total")));
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
