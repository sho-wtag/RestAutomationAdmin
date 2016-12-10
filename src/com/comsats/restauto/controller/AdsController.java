package com.comsats.restauto.controller;

import java.util.ArrayList;
import java.util.List;

import com.comsats.restauto.dao.AdsDAO;
import com.comsats.restauto.dao.GenericDAO;
import com.comsats.restauto.entity.Ad;

public class AdsController {
	/**
	 * @uml.property  name="dbConnectionHandler"
	 * @uml.associationEnd  multiplicity="(1 1)"
	 */
	GenericDAO dbConnectionHandler;
	/**
	 * @uml.property  name="newAd"
	 * @uml.associationEnd  multiplicity="(1 1)"
	 */
	Ad newAd = new Ad();
	public AdsController() {
		dbConnectionHandler = new GenericDAO();
	}
	
	public void saveAd(Ad newAd) {
		// save this newAd object in the db
		String insertQuery = "insert into dish_ads (NAME,banner_img,description,STATUS) values('"
				+ newAd.getAdName() + "', '"+newAd.getBannerName()+"', '" + newAd.getAdDescription() + "'," +
						" '"+newAd.getStatus()+"')";
		dbConnectionHandler.executeUpdate(insertQuery);
	}
	
	public void deleteAd(long adId) {
		// delete this adId from the db
		
		String insertQuery = "DELETE FROM dish_ads WHERE id='"+adId+"'";
		dbConnectionHandler.executeUpdate(insertQuery);
	}
	
	public List<Ad> getAdsList(String str) {
		// get the complete listing of ads from the db.
		ArrayList<Ad> list;
		AdsDAO suggestList = new AdsDAO();
		list = suggestList.getSuggestions(str);
		return list;
	}
	
	public void updateAd(Ad oldAd) {
		// update this old ad in the db.
		String insertQuery = "update  dish_ads set NAME='"+oldAd.getAdName()+"'," +
				"banner_img = '"+oldAd.getBannerName()+"', " +
					"description = '"+oldAd.getAdDescription()+"', " +
						"STATUS='"+oldAd.getStatus()+"' where id='"+oldAd.getAdId()+"' ";
		dbConnectionHandler.executeUpdate(insertQuery);
		
	}
}
