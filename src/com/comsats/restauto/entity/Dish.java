package com.comsats.restauto.entity;

import java.util.ArrayList;

public class Dish {
	/**
	 * @uml.property  name="dishID"
	 */
	Integer dishID;
	/**
	 * @uml.property  name="dishCategory"
	 */
	int dishCategory;
	/**
	 * @uml.property  name="dishName"
	 */
	String dishName;
	/**
	 * @uml.property  name="dishDescription"
	 */
	String dishDescription;
	/**
	 * @uml.property  name="dishPrice"
	 */
	String dishPrice;
	/**
	 * @uml.property  name="dishCalories"
	 */
	String dishCalories;
	/**
	 * @uml.property  name="dishDiscount"
	 */
	String dishDiscount;
	/**
	 * @uml.property  name="dishCookTime"
	 */
	String dishCookTime;
	/**
	 * @uml.property  name="dishImage"
	 */
	String dishImage;
	/**
	 * @uml.property  name="dishHot"
	 */
	String dishHot;
	/**
	 * @uml.property  name="dishUnit"
	 */
	String dishUnit;
	/**
	 * @uml.property  name="dishStatus"
	 */
	String dishStatus;
	/**
	 * @uml.property  name="dishQuantity"
	 */
	String dishQuantity;
	/**
	 * @uml.property  name="list"
	 */
	public ArrayList<Dish> list = new ArrayList<Dish>();
	
	public ArrayList<Dish> getList() {
		return list;
	}

	public void setList(ArrayList<Dish> list) {
		this.list = list;
	}

	public Dish(){
		
	}
	
	public Dish(Integer dishID, int dishCategory, String dishName,
			String dishDescription, String dishPrice, String dishCalories,
			String dishDiscount, String dishCookTime, String dishImage, String dishHot, String dishUnit,
			String dishStatus) {
		this.dishID = dishID;
		this.dishCategory = dishCategory;
		this.dishName = dishName;
		this.dishDescription = dishDescription;
		this.dishPrice = dishPrice;
		this.dishCalories = dishCalories;
		this.dishDiscount = dishDiscount;
		this.dishCookTime = dishCookTime;
		this.dishImage = dishImage;
		this.dishHot = dishHot;
		this.dishUnit = dishUnit;
		this.dishStatus = dishStatus;
	}

	public Dish(Integer dishID, int dishCategory, String dishName,
			String dishDescription, String dishPrice, String dishCalories,
			String dishDiscount, String dishCookTime, String dishImage, String dishHot, String dishUnit,
			String dishStatus, String dishQuantity) {
		this.dishID = dishID;
		this.dishCategory = dishCategory;
		this.dishName = dishName;
		this.dishDescription = dishDescription;
		this.dishPrice = dishPrice;
		this.dishCalories = dishCalories;
		this.dishDiscount = dishDiscount;
		this.dishCookTime = dishCookTime;
		this.dishImage = dishImage;
		this.dishHot = dishHot;
		this.dishUnit = dishUnit;
		this.dishStatus = dishStatus;
		this.dishQuantity = dishQuantity;
	}
	
	/**
	 * @return
	 * @uml.property  name="dishID"
	 */
	public Integer getDishID() {
		return dishID;
	}
	public void setDishID(int dishID) {
		this.dishID = dishID;
	}
	/**
	 * @return
	 * @uml.property  name="dishName"
	 */
	public String getDishName() {
		return dishName;
	}
	/**
	 * @param dishName
	 * @uml.property  name="dishName"
	 */
	public void setDishName(String dishName) {
		this.dishName = dishName;
	}
	/**
	 * @return
	 * @uml.property  name="dishImage"
	 */
	public String getDishImage() {
		return dishImage;
	}
	/**
	 * @param dishImage
	 * @uml.property  name="dishImage"
	 */
	public void setDishImage(String dishImage) {
		this.dishImage = dishImage;
	}
	/**
	 * @return
	 * @uml.property  name="dishCategory"
	 */
	public int getDishCategory() {
		return dishCategory;
	}
	/**
	 * @param dishCategory
	 * @uml.property  name="dishCategory"
	 */
	public void setDishCategory(int dishCategory) {
		this.dishCategory = dishCategory;
	}
	/**
	 * @return
	 * @uml.property  name="dishDescription"
	 */
	public String getDishDescription() {
		return dishDescription;
	}
	/**
	 * @param dishDescription
	 * @uml.property  name="dishDescription"
	 */
	public void setDishDescription(String dishDescription) {
		this.dishDescription = dishDescription;
	}
	/**
	 * @return
	 * @uml.property  name="dishPrice"
	 */
	public String getDishPrice() {
		return dishPrice;
	}
	/**
	 * @param dishPrice
	 * @uml.property  name="dishPrice"
	 */
	public void setDishPrice(String dishPrice) {
		this.dishPrice = dishPrice;
	}
	/**
	 * @return
	 * @uml.property  name="dishCalories"
	 */
	public String getDishCalories() {
		return dishCalories;
	}
	/**
	 * @param dishCalories
	 * @uml.property  name="dishCalories"
	 */
	public void setDishCalories(String dishCalories) {
		this.dishCalories = dishCalories;
	}
	/**
	 * @return
	 * @uml.property  name="dishDiscount"
	 */
	public String getDishDiscount() {
		return dishDiscount;
	}
	/**
	 * @param dishDiscount
	 * @uml.property  name="dishDiscount"
	 */
	public void setDishDiscount(String dishDiscount) {
		this.dishDiscount = dishDiscount;
	}
	/**
	 * @return
	 * @uml.property  name="dishCookTime"
	 */
	public String getDishCookTime() {
		return dishCookTime;
	}
	/**
	 * @param dishCookTime
	 * @uml.property  name="dishCookTime"
	 */
	public void setDishCookTime(String dishCookTime) {
		this.dishCookTime = dishCookTime;
	}
	/**
	 * @return
	 * @uml.property  name="dishStatus"
	 */
	public String getDishStatus() {
		return dishStatus;
	}
	/**
	 * @param dishStatus
	 * @uml.property  name="dishStatus"
	 */
	public void setDishStatus(String dishStatus) {
		this.dishStatus = dishStatus;
	}

	/**
	 * @return
	 * @uml.property  name="dishHot"
	 */
	public String getDishHot() {
		return dishHot;
	}

	/**
	 * @param dishHot
	 * @uml.property  name="dishHot"
	 */
	public void setDishHot(String dishHot) {
		this.dishHot = dishHot;
	}

	/**
	 * @return
	 * @uml.property  name="dishUnit"
	 */
	public String getDishUnit() {
		return dishUnit;
	}

	/**
	 * @param dishUnit
	 * @uml.property  name="dishUnit"
	 */
	public void setDishUnit(String dishUnit) {
		this.dishUnit = dishUnit;
	}

	public String getDishquantity() {
		return dishQuantity;
	}

	public void setDishquantity(String dishquantity) {
		this.dishQuantity = dishquantity;
	}

	

}
