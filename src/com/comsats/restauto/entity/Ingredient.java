package com.comsats.restauto.entity;

import java.util.ArrayList;

public class Ingredient {
	/**
	 * @uml.property  name="ingredientID"
	 */
	Integer ingredientID;
	/**
	 * @uml.property  name="ingredientDishID"
	 */
	Integer ingredientDishID;
	/**
	 * @uml.property  name="ingredientName"
	 */
	String ingredientName;
	/**
	 * @uml.property  name="ingredientStatus"
	 */
	String ingredientStatus;
	/**
	 * @uml.property  name="list"
	 */
	public ArrayList<Ingredient> list = new ArrayList<Ingredient>();
	
	public Ingredient()
	{
		
	}
	 
	public Ingredient(Integer ingredientID, Integer ingredientDishID, String ingredientName, String ingredientStatus)
	{
		setIngredientID(ingredientID);
		setIngredientDishID(ingredientDishID);
		setIngredientName(ingredientName);
		setIngredientStatus(ingredientStatus);
	}
	
	/**
	 * @return
	 * @uml.property  name="ingredientID"
	 */
	public Integer getIngredientID() {
		return ingredientID;
	}
	/**
	 * @param ingredientID
	 * @uml.property  name="ingredientID"
	 */
	public void setIngredientID(Integer ingredientID) {
		this.ingredientID = ingredientID;
	}
	/**
	 * @return
	 * @uml.property  name="ingredientDishID"
	 */
	public Integer getIngredientDishID() {
		return ingredientDishID;
	}
	/**
	 * @param ingredientDishID
	 * @uml.property  name="ingredientDishID"
	 */
	public void setIngredientDishID(Integer ingredientDishID) {
		this.ingredientDishID = ingredientDishID;
	}
	/**
	 * @return
	 * @uml.property  name="ingredientName"
	 */
	public String getIngredientName() {
		return ingredientName;
	}
	/**
	 * @param ingredientName
	 * @uml.property  name="ingredientName"
	 */
	public void setIngredientName(String ingredientName) {
		this.ingredientName = ingredientName;
	}
	/**
	 * @return
	 * @uml.property  name="ingredientStatus"
	 */
	public String getIngredientStatus() {
		return ingredientStatus;
	}
	/**
	 * @param ingredientStatus
	 * @uml.property  name="ingredientStatus"
	 */
	public void setIngredientStatus(String ingredientStatus) {
		this.ingredientStatus = ingredientStatus;
	}
	public ArrayList<Ingredient> getList() {
		return list;
	}
	public void setList(ArrayList<Ingredient> list) {
		this.list = list;
	}
	
	
	
}
