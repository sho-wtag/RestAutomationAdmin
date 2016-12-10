package com.comsats.restauto.entity;

import java.util.ArrayList;

public class Category {
	/**
	 * @uml.property  name="catId"
	 */
	public Integer catId;
	/**
	 * @uml.property  name="catName"
	 */
	public String catName;
	/**
	 * @uml.property  name="catStatus"
	 */
	public String catStatus;
	/**
	 * @uml.property  name="catImage"
	 */
	public String catImage;
	/**
	 * @uml.property  name="list"
	 */
	public ArrayList<Category> list = new ArrayList<Category>();
	

public Category(){
		
	}
	
	public Category(Integer catId, String catName,String catImage, String catStatus){
		setCatId(catId);
		setCatName(catName);
		setCatStatus(catStatus);
		setCatImage(catImage);
	}
	
	/**
	 * @return
	 * @uml.property  name="catId"
	 */
	public Integer getCatId() {
		return catId;
	}

	/**
	 * @param catId
	 * @uml.property  name="catId"
	 */
	public void setCatId(Integer catId) {
		this.catId = catId;
	}

	public ArrayList<Category> getList() {
		return list;
	}

	public void setList(ArrayList<Category> list) {
		this.list = list;
	}
	
	/**
	 * @return
	 * @uml.property  name="catName"
	 */
	public String getCatName() {
		return catName;
	}
	/**
	 * @param catName
	 * @uml.property  name="catName"
	 */
	public void setCatName(String catName) {
		this.catName = catName;
	}
	/**
	 * @return
	 * @uml.property  name="catStatus"
	 */
	public String getCatStatus() {
		return catStatus;
	}
	/**
	 * @param catStatus
	 * @uml.property  name="catStatus"
	 */
	public void setCatStatus(String catStatus) {
		this.catStatus = catStatus;
	}

	/**
	 * @return
	 * @uml.property  name="catImage"
	 */
	public String getCatImage() {
		return catImage;
	}

	/**
	 * @param catImage
	 * @uml.property  name="catImage"
	 */
	public void setCatImage(String catImage) {
		this.catImage = catImage;
	}


}
