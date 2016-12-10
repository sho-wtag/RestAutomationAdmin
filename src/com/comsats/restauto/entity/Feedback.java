package com.comsats.restauto.entity;

import java.util.ArrayList;

public class Feedback {
	/**
	 * @uml.property  name="feedbackID"
	 */
	Integer feedbackID;
	/**
	 * @uml.property  name="customerID"
	 */
	String customerID;
	/**
	 * @uml.property  name="feedbackRemarks"
	 */
	String feedbackRemarks;
	/**
	 * @uml.property  name="feedbackRatig"
	 */
	String feedbackRatig;
	/**
	 * @uml.property  name="feedbackDate"
	 */
	String feedbackDate;
	/**
	 * @uml.property  name="status"
	 */
	String status;
	/**
	 * @uml.property  name="list"
	 */
	public ArrayList<Feedback> list = new ArrayList<Feedback>();
	
	public Feedback()
	{
		
	}
	
	public Feedback(Integer feedbackID, String customerID, String feedbackRemarks, String feedbackRatig, String feedbackDate, String status)
	{
		setFeedbackID(feedbackID);
		setCustomerID(customerID);
		setFeedbackRemarks(feedbackRemarks);
		setFeedbackRatig(feedbackRatig);
		setFeedbackDate(feedbackDate);
		setStatus(status);
	}

	/**
	 * @return
	 * @uml.property  name="feedbackID"
	 */
	public Integer getFeedbackID() {
		return feedbackID;
	}

	/**
	 * @param feedbackID
	 * @uml.property  name="feedbackID"
	 */
	public void setFeedbackID(Integer feedbackID) {
		this.feedbackID = feedbackID;
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
	 * @uml.property  name="feedbackRemarks"
	 */
	public String getFeedbackRemarks() {
		return feedbackRemarks;
	}

	/**
	 * @param feedbackRemarks
	 * @uml.property  name="feedbackRemarks"
	 */
	public void setFeedbackRemarks(String feedbackRemarks) {
		this.feedbackRemarks = feedbackRemarks;
	}

	/**
	 * @return
	 * @uml.property  name="feedbackRatig"
	 */
	public String getFeedbackRatig() {
		return feedbackRatig;
	}

	/**
	 * @param feedbackRatig
	 * @uml.property  name="feedbackRatig"
	 */
	public void setFeedbackRatig(String feedbackRatig) {
		this.feedbackRatig = feedbackRatig;
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

	public ArrayList<Feedback> getList() {
		return list;
	}

	public void setList(ArrayList<Feedback> list) {
		this.list = list;
	}

	/**
	 * @return
	 * @uml.property  name="feedbackDate"
	 */
	public String getFeedbackDate() {
		return feedbackDate;
	}

	/**
	 * @param feedbackDate
	 * @uml.property  name="feedbackDate"
	 */
	public void setFeedbackDate(String feedbackDate) {
		this.feedbackDate = feedbackDate;
	}
	
	
}
