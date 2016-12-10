package com.comsats.restauto.controller;


import java.util.ArrayList;

import com.comsats.restauto.dao.CategoryDAO;
import com.comsats.restauto.dao.DishDAO;
import com.comsats.restauto.dao.GenericDAO;
import com.comsats.restauto.entity.Category;
import com.comsats.restauto.entity.Dish;

public class DishController {

	/**
	 * @uml.property  name="dbConnectionHandler"
	 * @uml.associationEnd  multiplicity="(1 1)"
	 */
	GenericDAO dbConnectionHandler;

	public DishController(){
		dbConnectionHandler = new GenericDAO();
		
	}
	public void saveCategory(Category newCat) {

		String insertQuery = "insert into dish_category (NAME,image,STATUS) values('"
				+ newCat.getCatName() + "', '"+newCat.getCatImage()+"','" + newCat.getCatStatus() + "')";
		dbConnectionHandler.executeUpdate(insertQuery);
		
	}
	public void updateCategory(Category updateCat) {

		String insertQuery = "update  dish_category set NAME='"+updateCat.getCatName()+"',image = '"+updateCat.getCatImage()+"',STATUS='"+updateCat.getCatStatus()+"' where id='"+updateCat.getCatId()+"' ";
		dbConnectionHandler.executeUpdate(insertQuery);
		
	}
	public ArrayList<Category> suggestCategory(String str) {
		
		ArrayList<Category> list;
		CategoryDAO listSuggest = new CategoryDAO();
		list =  listSuggest.getSuggestions(str);
		return  list;
		
	}
	
	public void deleteCategory(int id) {
		
		String insertQuery = "DELETE FROM dish_category WHERE id='"+id+"'";
		dbConnectionHandler.executeUpdate(insertQuery);
		
	}
	
	public int checkCategory(int id) {
		
		CategoryDAO check = new CategoryDAO();
		return check.checkDishes(id);
		
	}
	public String getCatName(int id){
		CategoryDAO categoryName = new CategoryDAO();
		return categoryName.selectCatInEditDish(id);
	}
	
	public void saveDish(Dish newDish) {

		String insertQuery = "insert into dish (category_id,NAME,description,price,picture,calories_per_100_grams,discount," +
				"average_cooking_time_min,hot,unit,STATUS) values('"
				+ newDish.getDishCategory() + "','" + newDish.getDishName() + "' , '"+ newDish.getDishDescription()+"' , " +
						"'"+ newDish.getDishPrice()+"' ,'"+newDish.getDishImage()+"', '"+newDish.getDishCalories()+"', '"+newDish.getDishDiscount()+"'" +
								", '"+newDish.getDishCookTime()+"', '"+newDish.getDishHot()+"','"+newDish.getDishUnit()+"', '"+newDish.getDishStatus()+"')";
		dbConnectionHandler.executeUpdate(insertQuery);
		
		
	}
	
	public void updateDish(Dish updateDish) {

		String insertQuery = "update dish set category_id = '"+updateDish.getDishCategory()+"',"+
				"NAME = '"+updateDish.getDishName()+"'," +
				"description = '"+updateDish.getDishDescription().trim()+"'," +
				"price = '"+updateDish.getDishPrice()+"'," +
						"picture = '"+updateDish.getDishImage()+"'," +
						"calories_per_100_grams = '"+updateDish.getDishCalories()+"'," +
								"discount = '"+updateDish.getDishDiscount()+"'," +
								"average_cooking_time_min = '"+updateDish.getDishCookTime()+"'," +
								"hot = '"+updateDish.getDishHot()+"'," +
								"unit = '"+updateDish.getDishUnit()+"',"+
										"STATUS='"+updateDish.getDishStatus()+"' " +
												"where id='"+updateDish.getDishID()+"'";
		dbConnectionHandler.executeUpdate(insertQuery);
		
	}
	
	public ArrayList<Dish> suggestDish(String str) {
		
		ArrayList<Dish> list;
		DishDAO listSuggest = new DishDAO();
		list =  listSuggest.getSuggestions(str);
		return  list;
		
	}
	public void deleteDish(int id)
	{
		String insertQuery = "DELETE FROM dish WHERE id='"+id+"'";
		dbConnectionHandler.executeUpdate(insertQuery);
	}
	
	public ArrayList<Dish> listDishes(int catID)
	{
		ArrayList<Dish> list;
		DishDAO listSuggest = new DishDAO();
		list =  listSuggest.getAllDishes(catID);
		return  list;
		
	}
	
	
}
