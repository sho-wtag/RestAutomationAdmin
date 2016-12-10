package com.comsats.restauto.entity;

import java.sql.Date;

public class Greeting {
	/**
	 * @uml.property  name="greetingId"
	 */
	String greetingId;
	/**
	 * @uml.property  name="greetingTitle"
	 */
	String greetingTitle;
	/**
	 * @uml.property  name="greetingDescription"
	 */
	String greetingDescription;
	/**
	 * @uml.property  name="greetingDate"
	 */
	String greetingDate;
	/**
	 * @uml.property  name="status"
	 */
	String status;
	/**
	 * @uml.property  name="banner"
	 */
	String banner;
	/**
	 * @uml.property  name="createdOn"
	 */
	Date createdOn;
	/**
	 * @uml.property  name="updatedOn"
	 */
	Date updatedOn;
	
	/**
	 * @return
	 * @uml.property  name="updatedOn"
	 */
	public Date getUpdatedOn() {
		return updatedOn;
	}
	/**
	 * @param updatedOn
	 * @uml.property  name="updatedOn"
	 */
	public void setUpdatedOn(Date updatedOn) {
		this.updatedOn = updatedOn;
	}
	/**
	 * @return
	 * @uml.property  name="createdOn"
	 */
	public Date getCreatedOn() {
		return createdOn;
	}
	/**
	 * @param createdOn
	 * @uml.property  name="createdOn"
	 */
	public void setCreatedOn(Date createdOn) {
		this.createdOn = createdOn;
	}
	/**
	 * @return
	 * @uml.property  name="banner"
	 */
	public String getBanner() {
		return banner;
	}
	/**
	 * @param banner
	 * @uml.property  name="banner"
	 */
	public void setBanner(String banner) {
		this.banner = banner;
	}
	/**
	 * @return
	 * @uml.property  name="greetingId"
	 */
	public String getGreetingId() {
		return greetingId;
	}
	/**
	 * @param greetingId
	 * @uml.property  name="greetingId"
	 */
	public void setGreetingId(String greetingId) {
		this.greetingId = greetingId;
	}
	/**
	 * @return
	 * @uml.property  name="greetingTitle"
	 */
	public String getGreetingTitle() {
		return greetingTitle;
	}
	/**
	 * @param greetingTitle
	 * @uml.property  name="greetingTitle"
	 */
	public void setGreetingTitle(String greetingTitle) {
		this.greetingTitle = greetingTitle;
	}
	/**
	 * @return
	 * @uml.property  name="greetingDescription"
	 */
	public String getGreetingDescription() {
		return greetingDescription;
	}
	/**
	 * @param greetingDescription
	 * @uml.property  name="greetingDescription"
	 */
	public void setGreetingDescription(String greetingDescription) {
		this.greetingDescription = greetingDescription;
	}
	/**
	 * @return
	 * @uml.property  name="greetingDate"
	 */
	public String getGreetingDate() {
		return greetingDate;
	}
	/**
	 * @param greetingDate
	 * @uml.property  name="greetingDate"
	 */
	public void setGreetingDate(String greetingDate) {
		this.greetingDate = greetingDate;
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
