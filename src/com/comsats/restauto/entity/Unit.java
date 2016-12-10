package com.comsats.restauto.entity;

import java.util.ArrayList;

public class Unit {
	/**
	 * @uml.property  name="unitID"
	 */
	Integer unitID;
	/**
	 * @uml.property  name="unitName"
	 */
	String unitName;
	/**
	 * @uml.property  name="status"
	 */
	String status;
	/**
	 * @uml.property  name="list"
	 */
	public ArrayList<Unit> list = new ArrayList<Unit>();
	
	public Unit()
	{
		
	}
	
	public Unit(Integer unitID, String unitName, String status)
	{
		setUnitID(unitID);
		setUnitName(unitName);
		setStatus(status);
	}
	
	/**
	 * @return
	 * @uml.property  name="unitID"
	 */
	public Integer getUnitID() {
		return unitID;
	}
	/**
	 * @param unitID
	 * @uml.property  name="unitID"
	 */
	public void setUnitID(Integer unitID) {
		this.unitID = unitID;
	}
	/**
	 * @return
	 * @uml.property  name="unitName"
	 */
	public String getUnitName() {
		return unitName;
	}
	/**
	 * @param unitName
	 * @uml.property  name="unitName"
	 */
	public void setUnitName(String unitName) {
		this.unitName = unitName;
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
	public ArrayList<Unit> getList() {
		return list;
	}
	public void setList(ArrayList<Unit> list) {
		this.list = list;
	}
	
	
}
