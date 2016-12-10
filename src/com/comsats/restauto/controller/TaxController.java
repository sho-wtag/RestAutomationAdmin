package com.comsats.restauto.controller;

import com.comsats.restauto.dao.GenericDAO;
import com.comsats.restauto.dao.TaxDAO;
import com.comsats.restauto.entity.Tax;

public class TaxController {
	/**
	 * @uml.property  name="dbConnectionHandler"
	 * @uml.associationEnd  multiplicity="(1 1)"
	 */
	GenericDAO dbConnectionHandler;
	
	public TaxController()
	{
		dbConnectionHandler = new GenericDAO();
	}

	public void SaveTax(Tax newTax)
	{
		String insertQuery = "insert into tax (tax_rate,STATUS) values('"
				+ newTax.getTaxRate() + "', '"+newTax.getStatus()+"')";
		dbConnectionHandler.executeUpdate(insertQuery);

	}
	
	public void UpdateTax(Tax newTax)
	{
		String insertQuery = "update tax set tax_rate = '"+newTax.getTaxRate()+"' , STATUS = '"+newTax.getStatus()+"' ";
		dbConnectionHandler.executeUpdate(insertQuery);

	}
	
	public String checkTax()
	{
		TaxDAO checkTaxRate = new TaxDAO();
		return checkTaxRate.checkTAX();
	}
	
}
