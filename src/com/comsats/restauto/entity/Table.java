package com.comsats.restauto.entity;

import java.util.ArrayList;

public class Table {
	/**
	 * @uml.property  name="tableID"
	 */
	Integer tableID;
	/**
	 * @uml.property  name="tableNumber"
	 */
	int tableNumber;
	/**
	 * @uml.property  name="tableDescription"
	 */
	String tableDescription;
	/**
	 * @uml.property  name="status"
	 */
	String status;
	/**
	 * @uml.property  name="list"
	 */
	public ArrayList<Table> list = new ArrayList<Table>();
	
	public Table()
	{
		
	}
	
	public Table(Integer tableID, int tableNumber, String tableDescription, String status)
	{
		setTableID(tableID);
		setTableNumber(tableNumber);
		setTableDescription(tableDescription);
		setStatus(status);
	}
	
	
	/**
	 * @return
	 * @uml.property  name="tableID"
	 */
	public Integer getTableID() {
		return tableID;
	}


	/**
	 * @param tableID
	 * @uml.property  name="tableID"
	 */
	public void setTableID(Integer tableID) {
		this.tableID = tableID;
	}


	public ArrayList<Table> getList() {
		return list;
	}


	public void setList(ArrayList<Table> list) {
		this.list = list;
	}


	/**
	 * @return
	 * @uml.property  name="tableNumber"
	 */
	public int getTableNumber() {
		return tableNumber;
	}
	/**
	 * @param tableNumber
	 * @uml.property  name="tableNumber"
	 */
	public void setTableNumber(int tableNumber) {
		this.tableNumber = tableNumber;
	}
	/**
	 * @return
	 * @uml.property  name="tableDescription"
	 */
	public String getTableDescription() {
		return tableDescription;
	}
	/**
	 * @param tableDescription
	 * @uml.property  name="tableDescription"
	 */
	public void setTableDescription(String tableDescription) {
		this.tableDescription = tableDescription;
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
