package com.comsats.restauto.controller;

import java.util.ArrayList;

import com.comsats.restauto.dao.GenericDAO;
import com.comsats.restauto.dao.TableDAO;
import com.comsats.restauto.entity.Table;

public class TableController {
	/**
	 * @uml.property  name="dbConnectionHandler"
	 * @uml.associationEnd  multiplicity="(1 1)"
	 */
	GenericDAO dbConnectionHandler;
	
	public TableController()
	{
		dbConnectionHandler = new GenericDAO();
	}
	
	public void saveTable(Table newTable)
	{
		String insertQuery = "insert into table_info (number,description,STATUS) values('"
				+ newTable.getTableNumber() + "', '"+newTable.getTableDescription()+"','" + newTable.getStatus() + "')";
		dbConnectionHandler.executeUpdate(insertQuery);
	}
	public void updateTable(Table newTable)
	{
		String insertQuery = "update table_info set number = '" +newTable.getTableNumber() + "', description = '"+newTable.getTableDescription()+"', STATUS='" + newTable.getStatus() + "' where id = '"+newTable.getTableID()+"'";
		dbConnectionHandler.executeUpdate(insertQuery);
	}
	public void deleteTable(int id)
	{
		String insertQuery = "DELETE FROM table_info WHERE id='"+id+"'";
		dbConnectionHandler.executeUpdate(insertQuery);
	}
	public ArrayList<Table> suggestTable(String str)
	{
		ArrayList<Table> list;
		TableDAO tablesuggest = new TableDAO();
		list = tablesuggest.getSuggestionsList(str);
		return list;
		
	}
	public int checkTable(int id) {
		
		TableDAO check = new TableDAO();
		return check.checkTables(id);
		
		
	}
}
