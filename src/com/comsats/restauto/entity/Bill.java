package com.comsats.restauto.entity;

public class Bill {
	/**
	 * @uml.property  name="orderID"
	 */
	int orderID;
	/**
	 * @uml.property  name="billedAmount"
	 */
	Float billedAmount;
	/**
	 * @uml.property  name="createdBy"
	 */
	Integer createdBy;
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
	String Status;
	
	
	/**
	 * @return
	 * @uml.property  name="orderID"
	 */
	public int getOrderID() {
		return orderID;
	}
	/**
	 * @param orderID
	 * @uml.property  name="orderID"
	 */
	public void setOrderID(int orderID) {
		this.orderID = orderID;
	}
	public Float getBilled_amount() {
		return billedAmount;
	}
	public void setBilled_amount(Float billedAmount) {
		this.billedAmount = billedAmount;
	}
	/**
	 * @return
	 * @uml.property  name="createdBy"
	 */
	public Integer getCreatedBy() {
		return createdBy;
	}
	/**
	 * @param createdBy
	 * @uml.property  name="createdBy"
	 */
	public void setCreatedBy(Integer createdBy) {
		this.createdBy = createdBy;
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
		return Status;
	}
	/**
	 * @param status
	 * @uml.property  name="status"
	 */
	public void setStatus(String status) {
		Status = status;
	}
	
	
	

}
