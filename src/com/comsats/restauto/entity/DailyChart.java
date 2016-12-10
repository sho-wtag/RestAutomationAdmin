package com.comsats.restauto.entity;

import java.util.ArrayList;

public class DailyChart {
	String categoryName;
	Integer quantity;
	
	public ArrayList<DailyChart> list = new ArrayList<DailyChart>();
	
	public DailyChart()
	{
		
	}
	
	public DailyChart(String categoryName, Integer quantity)
	{
		setCategoryName(categoryName);
		setQuantity(quantity);
	}
	
	public ArrayList<DailyChart> getList() {
		return list;
	}
	public void setList(ArrayList<DailyChart> list) {
		this.list = list;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public Integer getQuantity() {
		return quantity;
	}
	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
	
	
}
