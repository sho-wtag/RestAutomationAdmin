package com.comsats.restauto.controller;

import java.util.ArrayList;

import com.comsats.restauto.dao.GenericDAO;
import com.comsats.restauto.dao.UnitDAO;
import com.comsats.restauto.entity.Unit;

public class UnitController {
	/**
	 * @uml.property  name="dbConnectionHandler"
	 * @uml.associationEnd  multiplicity="(1 1)"
	 */
	GenericDAO dbConnectionHandler;
	
	public UnitController()
	{
		dbConnectionHandler = new GenericDAO();
	}
	
	public void saveUnit(Unit newUnit)
	{
		String insertQuery = "insert into unit (name,STATUS) values('"
				+ newUnit.getUnitName() + "', '"+newUnit.getStatus()+"')";
		dbConnectionHandler.executeUpdate(insertQuery);
	}
	
	public void updateUnit(Unit newUnit)
	{
		String insertQuery = "update unit set name = '" +newUnit.getUnitName() + "', STATUS='" + newUnit.getStatus() + "' where id = '"+newUnit.getUnitID()+"'";
		dbConnectionHandler.executeUpdate(insertQuery);
	}
	public void deleteUnit(int id)
	{
		String insertQuery = "DELETE FROM unit WHERE id='"+id+"'";
		dbConnectionHandler.executeUpdate(insertQuery);
	}
	
	public ArrayList<Unit> suggestUnit(String str)
	{
		ArrayList<Unit> list;
		UnitDAO unitsuggest = new UnitDAO();
		list = unitsuggest.getSuggestionsList(str);
		return list;
		
	}
	
}
