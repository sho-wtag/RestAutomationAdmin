package com.comsats.restauto.controller;

import java.util.ArrayList;

import com.comsats.restauto.dao.GenericDAO;
import com.comsats.restauto.dao.IngredientDAO;
import com.comsats.restauto.entity.Ingredient;

public class IngredientController {
	/**
	 * @uml.property  name="dbConnectionHandler"
	 * @uml.associationEnd  multiplicity="(1 1)"
	 */
	GenericDAO dbConnectionHandler;
	
	public IngredientController()
	{
		dbConnectionHandler = new GenericDAO();
	}
	
	public void saveIngredient(Ingredient newIngredient)
	{
		String insertQuery = "insert into dish_major_ingredients (dish_id,name,STATUS) values('"
				+ newIngredient.getIngredientDishID() + "', '"+newIngredient.getIngredientName()+"','" + newIngredient.getIngredientStatus() + "')";
		dbConnectionHandler.executeUpdate(insertQuery);
	}

	public void updateIngredient(Ingredient newIngredient)
	{
		String insertQuery = "update dish_major_ingredients set dish_id = '" +newIngredient.getIngredientDishID() + "', name = '"+newIngredient.getIngredientName()+"', STATUS='" + newIngredient.getIngredientStatus() + "' where id = '"+newIngredient.getIngredientID()+"'";
		dbConnectionHandler.executeUpdate(insertQuery);
	}
public void deleteIngredient(int id) {
		
		String insertQuery = "DELETE FROM dish_major_ingredients WHERE id='"+id+"'";
		dbConnectionHandler.executeUpdate(insertQuery);
		
	}
	public ArrayList<Ingredient> suggestIngredient(Integer str)
	{
		ArrayList<Ingredient> list;
		IngredientDAO ingredientSuggest = new IngredientDAO();
		list = ingredientSuggest.getSuggestionsList(str);
		return list;
		
	}
}
