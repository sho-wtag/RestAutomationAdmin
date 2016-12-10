package com.comsats.restauto.entity;

public class Tax {
	/**
	 * @uml.property  name="taxRate"
	 */
	public int taxRate;
	/**
	 * @uml.property  name="status"
	 */
	public String status;
	
	/**
	 * @return
	 * @uml.property  name="taxRate"
	 */
	public int getTaxRate() {
		return taxRate;
	}
	/**
	 * @param taxRate
	 * @uml.property  name="taxRate"
	 */
	public void setTaxRate(int taxRate) {
		this.taxRate = taxRate;
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
