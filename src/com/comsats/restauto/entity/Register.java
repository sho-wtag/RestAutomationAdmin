package com.comsats.restauto.entity;

import java.util.ArrayList;

public class Register {
	/**
	 * @uml.property  name="userID"
	 */
	Integer userID;
	/**
	 * @uml.property  name="userRole"
	 */
	String userRole;
	/**
	 * @uml.property  name="userName"
	 */
	String userName;
	/**
	 * @uml.property  name="userPassword"
	 */
	String userPassword;
	/**
	 * @uml.property  name="userFirstName"
	 */
	String userFirstName;
	/**
	 * @uml.property  name="userLastName"
	 */
	String userLastName;
	/**
	 * @uml.property  name="userEmail"
	 */
	String userEmail;
	/**
	 * @uml.property  name="userAddress"
	 */
	String userAddress;
	/**
	 * @uml.property  name="userCnic"
	 */
	String userCnic;
	/**
	 * @uml.property  name="userTele"
	 */
	String userTele;
	/**
	 * @uml.property  name="userImage"
	 */
	String userImage;
	/**
	 * @uml.property  name="status"
	 */
	String status;
	/**
	 * @uml.property  name="list"
	 */
	public ArrayList<Register> list = new ArrayList<Register>();
	
	
	public Register()
	{
		
	}
	public Register(Integer userID, String userRole, String userName, String userPassword, String userFirstName, String userLastName, String userEmail, String userAddress, String userCnic, String userTele, String userImage, String status)
	{
		setUserID(userID);
		setUserRole(userRole);
		setUserName(userName);
		setUserPassword(userPassword);
		setUserFirstName(userFirstName);
		setUserLastName(userLastName);
		setUserEmail(userEmail);
		setUserAddress(userAddress);
		setUserCnic(userCnic);
		setUserTele(userTele);
		setUserImage(userImage);
		setStatus(status);
	}
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
	 * @uml.property  name="userRole"
	 */
	public String getUserRole() {
		return userRole;
	}
	/**
	 * @param userRole
	 * @uml.property  name="userRole"
	 */
	public void setUserRole(String userRole) {
		this.userRole = userRole;
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
	 * @uml.property  name="userPassword"
	 */
	public String getUserPassword() {
		return userPassword;
	}
	/**
	 * @param userPassword
	 * @uml.property  name="userPassword"
	 */
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	/**
	 * @return
	 * @uml.property  name="userFirstName"
	 */
	public String getUserFirstName() {
		return userFirstName;
	}
	/**
	 * @param userFirstName
	 * @uml.property  name="userFirstName"
	 */
	public void setUserFirstName(String userFirstName) {
		this.userFirstName = userFirstName;
	}
	/**
	 * @return
	 * @uml.property  name="userLastName"
	 */
	public String getUserLastName() {
		return userLastName;
	}
	/**
	 * @param userLastName
	 * @uml.property  name="userLastName"
	 */
	public void setUserLastName(String userLastName) {
		this.userLastName = userLastName;
	}
	/**
	 * @return
	 * @uml.property  name="userEmail"
	 */
	public String getUserEmail() {
		return userEmail;
	}
	/**
	 * @param userEmail
	 * @uml.property  name="userEmail"
	 */
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	/**
	 * @return
	 * @uml.property  name="userAddress"
	 */
	public String getUserAddress() {
		return userAddress;
	}
	/**
	 * @param userAddress
	 * @uml.property  name="userAddress"
	 */
	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}
	/**
	 * @return
	 * @uml.property  name="userCnic"
	 */
	public String getUserCnic() {
		return userCnic;
	}
	/**
	 * @param userCnic
	 * @uml.property  name="userCnic"
	 */
	public void setUserCnic(String userCnic) {
		this.userCnic = userCnic;
	}
	/**
	 * @return
	 * @uml.property  name="userTele"
	 */
	public String getUserTele() {
		return userTele;
	}
	/**
	 * @param userTele
	 * @uml.property  name="userTele"
	 */
	public void setUserTele(String userTele) {
		this.userTele = userTele;
	}
	/**
	 * @return
	 * @uml.property  name="userImage"
	 */
	public String getUserImage() {
		return userImage;
	}
	/**
	 * @param userImage
	 * @uml.property  name="userImage"
	 */
	public void setUserImage(String userImage) {
		this.userImage = userImage;
	}
	/**
	 * @return
	 * @uml.property  name="status"
	 */
	public String getStatus() {
		return status;
	}
	/**
	 * @param status
	 * @uml.property  name="status"
	 */
	public void setStatus(String status) {
		this.status = status;
	}
	public ArrayList<Register> getList() {
		return list;
	}
	public void setList(ArrayList<Register> list) {
		this.list = list;
	}
	
	
}
