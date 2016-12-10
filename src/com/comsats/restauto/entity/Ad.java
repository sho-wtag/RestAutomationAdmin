package com.comsats.restauto.entity;

import java.util.ArrayList;

public class Ad {

	/**
	 * @uml.property  name="adId"
	 */
	private Integer adId;
	/**
	 * @uml.property  name="adName"
	 */
	private String adName;
	/**
	 * @uml.property  name="adDescription"
	 */
	private String adDescription;
	/**
	 * @uml.property  name="bannerName"
	 */
	private String bannerName;
	/**
	 * @uml.property  name="status"
	 */
	private String status;
	/**
	 * @uml.property  name="list"
	 */
	public ArrayList<Ad> list = new ArrayList<Ad>();

	public ArrayList<Ad> getList() {
		return list;
	}

	public void setList(ArrayList<Ad> list) {
		this.list = list;
	}

	public Ad(){
		
	}
	
	public Ad(Integer adId, String adName,String adImage,String adDescription, String adStatus){
		setAdId(adId);
		setAdName(adName);
		setBannerName(adImage);
		setAdDescription(adDescription);
		setStatus(adStatus);
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
	
	/**
	 * @return
	 * @uml.property  name="adId"
	 */
	public Integer getAdId() {
		return adId;
	}
	/**
	 * @param adId
	 * @uml.property  name="adId"
	 */
	public void setAdId(Integer adId) {
		this.adId = adId;
	}
	/**
	 * @return
	 * @uml.property  name="adName"
	 */
	public String getAdName() {
		return adName;
	}
	/**
	 * @param adName
	 * @uml.property  name="adName"
	 */
	public void setAdName(String adName) {
		this.adName = adName;
	}
	/**
	 * @return
	 * @uml.property  name="adDescription"
	 */
	public String getAdDescription() {
		return adDescription;
	}
	/**
	 * @param adDescription
	 * @uml.property  name="adDescription"
	 */
	public void setAdDescription(String adDescription) {
		this.adDescription = adDescription;
	}
	/**
	 * @return
	 * @uml.property  name="bannerName"
	 */
	public String getBannerName() {
		return bannerName;
	}
	/**
	 * @param bannerName
	 * @uml.property  name="bannerName"
	 */
	public void setBannerName(String bannerName) {
		this.bannerName = bannerName;
	}
	
	
}
