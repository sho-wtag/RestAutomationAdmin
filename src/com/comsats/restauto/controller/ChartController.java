package com.comsats.restauto.controller;

import java.util.ArrayList;
import java.util.List;

import com.comsats.restauto.dao.ChartDAO;
import com.comsats.restauto.dao.GenericDAO;
import com.comsats.restauto.entity.DailyChart;

public class ChartController {
	GenericDAO dbConnectionHandler;
	public ChartController()
	{
		dbConnectionHandler = new GenericDAO();
	}
	
	public List<DailyChart> getDailyChart() {
		// get the complete listing of ads from the db.
		ArrayList<DailyChart> list;
		ChartDAO suggestList = new ChartDAO();
		list = suggestList.getDailyChart();
		return list;
	}
}
