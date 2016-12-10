package com.comsats.restauto.entity;

import java.util.ArrayList;

public class CallWaiter {
	/**
	 * @uml.property  name="callID"
	 */
	Integer callID;
	/**
	 * @uml.property  name="callTableNo"
	 */
	int callTableNo;
	/**
	 * @uml.property  name="callDateTime"
	 */
	String callDateTime;
	/**
	 * @uml.property  name="callStatus"
	 */
	String callStatus;
	
	/**
	 * @uml.property  name="list"
	 */
	public ArrayList<CallWaiter> list = new ArrayList<CallWaiter>();
	
	public CallWaiter()
	{
		
	}
	public CallWaiter(Integer callID, int callTableNo, String callDateTime, String callStatus)
	{
		setCallID(callID);
		setCalltableNo(callTableNo);
		setCallDateTime(callDateTime);
		setCallStatus(callStatus);
	}
	
	/**
	 * @return
	 * @uml.property  name="callID"
	 */
	public Integer getCallID() {
		return callID;
	}
	/**
	 * @param callID
	 * @uml.property  name="callID"
	 */
	public void setCallID(Integer callID) {
		this.callID = callID;
	}
	public int getCalltableNo() {
		return callTableNo;
	}
	public void setCalltableNo(int calltableNo) {
		this.callTableNo = calltableNo;
	}
	/**
	 * @return
	 * @uml.property  name="callDateTime"
	 */
	public String getCallDateTime() {
		return callDateTime;
	}
	/**
	 * @param callDateTime
	 * @uml.property  name="callDateTime"
	 */
	public void setCallDateTime(String callDateTime) {
		this.callDateTime = callDateTime;
	}
	/**
	 * @return
	 * @uml.property  name="callStatus"
	 */
	public String getCallStatus() {
		return callStatus;
	}
	/**
	 * @param callStatus
	 * @uml.property  name="callStatus"
	 */
	public void setCallStatus(String callStatus) {
		this.callStatus = callStatus;
	}

	public ArrayList<CallWaiter> getList() {
		return list;
	}

	public void setList(ArrayList<CallWaiter> list) {
		this.list = list;
	}
	
	
	
}
