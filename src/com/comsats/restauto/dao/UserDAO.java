package com.comsats.restauto.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.comsats.restauto.entity.User;

public class UserDAO extends GenericDAO {

	public User getSingleUser(String userName, String password) {
		
		User user = null;
		ResultSet resultSet = null;
		Connection dbConn = null;
		Statement sqlStmt = null;
		String query = "select id,password,role_name from user where user_name = '" + userName + "'";
		try {
			dbConn = this.getDbConnection();
			sqlStmt = dbConn.createStatement();
			resultSet = sqlStmt.executeQuery(query);
			
			if (resultSet != null && resultSet.next()) {
				user = new User();
				user.setUserID(Integer.parseInt(resultSet.getString("id")));
				user.setUserName(userName);
				user.setPassword(resultSet.getString("password"));
				user.setRoleName(resultSet.getString("role_name"));
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
		
		return user;
	}

}
