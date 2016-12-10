package com.comsats.restauto.entity;

import java.util.ArrayList;

public class OrderMain {
	/**
	 * @uml.property  name="iD"
	 */
	int ID;
	/**
	 * @uml.property  name="customerID"
	 */
	String customerID;
	/**
	 * @uml.property  name="tableNo"
	 */
	int tableNo;
	/**
	 * @uml.property  name="oderDate"
	 */
	String oderDate;
	/**
	 * @uml.property  name="instructions"
	 */
	String instructions; 
	/**
	 * @uml.property  name="estimatedTime"
	 */
	int estimatedTime;
	/**
	 * @uml.property  name="actualTime"
	 */
	String actualTime;
	/**
	 * @uml.property  name="createdOn"
	 */
	String createdOn;
	/**
	 * @uml.property  name="updatedOn"
	 */
	String updatedOn;
	/**
	 * @uml.property  name="status"
	 */
	String status;

	
	/**
	 * @uml.property  name="list"
	 */
	public ArrayList<OrderMain> list = new ArrayList<OrderMain>();
	
	public OrderMain(){
		
	}
	public OrderMain(int ID, String customerID,int tableNo, String orderDate, String instructions, int estimatedTime, String actualTime, String createdOn, String updatedOn, String status)
	{
		setID(ID);
		setCustomerID(customerID);
		setTableNo(tableNo);
		setOderDate(orderDate);
		setInstructions(instructions);
		setEstimatedTime(estimatedTime);
		setActualTime(actualTime);
		setCreatedOn(createdOn);
		setUpdatedOn(updatedOn);
		setStatus(status);
	}
	
	
	public ArrayList<OrderMain> getList() {
		return list;
	}
	public void setList(ArrayList<OrderMain> list) {
		this.list = list;
	}
	/**
	 * @return
	 * @uml.property  name="iD"
	 */
	public int getID() {
		return ID;
	}
	/**
	 * @param iD
	 * @uml.property  name="iD"
	 */
	public void setID(int iD) {
		ID = iD;
	}
	/**
	 * @return
	 * @uml.property  name="customerID"
	 */
	public String getCustomerID() {
		return customerID;
	}
	/**
	 * @param customerID
	 * @uml.property  name="customerID"
	 */
	public void setCustomerID(String customerID) {
		this.customerID = customerID;
	}
	/**
	 * @return
	 * @uml.property  name="tableNo"
	 */
	public int getTableNo() {
		return tableNo;
	}
	/**
	 * @param tableNo
	 * @uml.property  name="tableNo"
	 */
	public void setTableNo(int tableNo) {
		this.tableNo = tableNo;
	}
	/**
	 * @return
	 * @uml.property  name="oderDate"
	 */
	public String getOderDate() {
		return oderDate;
	}
	/**
	 * @param oderDate
	 * @uml.property  name="oderDate"
	 */
	public void setOderDate(String oderDate) {
		this.oderDate = oderDate;
	}
	/**
	 * @return
	 * @uml.property  name="instructions"
	 */
	public String getInstructions() {
		return instructions;
	}
	/**
	 * @param instructions
	 * @uml.property  name="instructions"
	 */
	public void setInstructions(String instructions) {
		this.instructions = instructions;
	}
	/**
	 * @return
	 * @uml.property  name="estimatedTime"
	 */
	public int getEstimatedTime() {
		return estimatedTime;
	}
	/**
	 * @param estimatedTime
	 * @uml.property  name="estimatedTime"
	 */
	public void setEstimatedTime(int estimatedTime) {
		this.estimatedTime = estimatedTime;
	}
	/**
	 * @return
	 * @uml.property  name="actualTime"
	 */
	public String getActualTime() {
		return actualTime;
	}
	/**
	 * @param actualTime
	 * @uml.property  name="actualTime"
	 */
	public void setActualTime(String actualTime) {
		this.actualTime = actualTime;
	}
	/**
	 * @return
	 * @uml.property  name="createdOn"
	 */
	public String getCreatedOn() {
		return createdOn;
	}
	/**
	 * @param createdOn
	 * @uml.property  name="createdOn"
	 */
	public void setCreatedOn(String createdOn) {
		this.createdOn = createdOn;
	}
	/**
	 * @return
	 * @uml.property  name="updatedOn"
	 */
	public String getUpdatedOn() {
		return updatedOn;
	}
	/**
	 * @param updatedOn
	 * @uml.property  name="updatedOn"
	 */
	public void setUpdatedOn(String updatedOn) {
		this.updatedOn = updatedOn;
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
	
	

}
