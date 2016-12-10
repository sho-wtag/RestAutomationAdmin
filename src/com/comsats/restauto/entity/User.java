package com.comsats.restauto.entity;

public class User {
	/**
	 * @uml.property  name="userID"
	 */
	public Integer userID;
	/**
	 * @uml.property  name="userName"
	 */
	public String userName;
	/**
	 * @uml.property  name="password"
	 */
	public String password;
	/**
	 * @uml.property  name="roleName"
	 */
	public String roleName;
	
	/**
	 * @return
	 * @uml.property  name="userID"
	 */
	public Integer getUserID() {
		return userID;
	}
	/**
	 * @param userID
	 * @uml.property  name="userID"
	 */
	public void setUserID(Integer userID) {
		this.userID = userID;
	}
	/**
	 * @return
	 * @uml.property  name="userName"
	 */
	public String getUserName() {
		return userName;
	}
	/**
	 * @param userName
	 * @uml.property  name="userName"
	 */
	public void setUserName(String userName) {
		this.userName = userName;
	}
	/**
	 * @return
	 * @uml.property  name="password"
	 */
	public String getPassword() {
		return password;
	}
	/**
	 * @param password
	 * @uml.property  name="password"
	 */
	public void setPassword(String password) {
		this.password = password;
	}
	/**
	 * @return
	 * @uml.property  name="roleName"
	 */
	public String getRoleName() {
		return roleName;
	}
	/**
	 * @param roleName
	 * @uml.property  name="roleName"
	 */
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	
	
}
