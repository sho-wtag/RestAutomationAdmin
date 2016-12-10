package com.comsats.restauto.controller;

import java.util.ArrayList;

import com.comsats.restauto.dao.FeedbackDAO;
import com.comsats.restauto.entity.Feedback;

public class FeedbackController {
	/**
	 * @uml.property  name="feedbackDAO"
	 * @uml.associationEnd  multiplicity="(1 1)"
	 */
	FeedbackDAO feedbackDAO;
	
	public FeedbackController()
	{
		feedbackDAO = new FeedbackDAO();
	}
	public ArrayList<Feedback> getFeedbackList()
	{
		ArrayList<Feedback> list;
		FeedbackDAO feedbacksuggest = new FeedbackDAO();
		list = feedbacksuggest.getFeedbackList();
		return list;
	}
	public ArrayList<Feedback> getNewFeedbackList()
	{
		ArrayList<Feedback> list;
		FeedbackDAO feedbacksuggest = new FeedbackDAO();
		list = feedbacksuggest.getNewFeedbackList();
		return list;
	}

	public int getCount()
	{
		FeedbackDAO feedbacksuggest = new FeedbackDAO();
		return feedbacksuggest.getRowCount(); 
	}
	
	public void updateNewFeedback(int id)
	{
		String updateQuery = "update  feedback_remarks set STATUS='unapprove' where id='"+id+"' ";
		feedbackDAO.executeUpdate(updateQuery);
	}
	public void updateFeedback()
	{
		String updateQuery = "update  feedback_remarks set STATUS='approve'";
		feedbackDAO.executeUpdate(updateQuery);
	}
}
