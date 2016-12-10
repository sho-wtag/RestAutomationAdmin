package com.comsats.restauto.controller;

import java.util.ArrayList;

import com.comsats.restauto.dao.GenericDAO;
import com.comsats.restauto.dao.OrderMainDAO;
import com.comsats.restauto.entity.Bill;
import com.comsats.restauto.entity.Dish;
import com.comsats.restauto.entity.OrderMain;

public class OrderController {
	
/**
 * @uml.property  name="dbConnectionHandler"
 * @uml.associationEnd  multiplicity="(1 1)"
 */
GenericDAO dbConnectionHandler;
	
	public OrderController()
	{
		dbConnectionHandler = new GenericDAO();
	}
	
	public ArrayList<OrderMain> getNewOrders(String status)
	{
		ArrayList<OrderMain> list;
		OrderMainDAO orderList = new OrderMainDAO();
		list = orderList.getNewOrders(status);
		return list;
		
	}
	
	public ArrayList<OrderMain> getAllOrders(String startDate, String endDate)
	{
		ArrayList<OrderMain> list;
		OrderMainDAO orderList = new OrderMainDAO();
		list = orderList.getAllOrders(startDate, endDate);
		return list;
		
	}
	
	public OrderMain getNewOrdersDetails(Integer id)
	{
		OrderMain orderDetail;
		OrderMainDAO orderDetailDAO = new OrderMainDAO();
		orderDetail = orderDetailDAO.getNewOrdersDetails(id);
		return orderDetail;
		
	}
	
	public ArrayList<Dish> getNewOrderDishesList(Integer orderMainId)
	{
		ArrayList<Dish> newOrderDisheslist;
		OrderMainDAO orderList = new OrderMainDAO();
		newOrderDisheslist = orderList.getNewOrderDishesList(orderMainId);
		return newOrderDisheslist;
		
	}
	
	public int getCount(String status)
	{
		ArrayList<OrderMain> list;
		OrderMainDAO orderList = new OrderMainDAO();
		list = orderList.getNewOrders(status);
		return list.size();
	}
	
	public void updateOrderStatus(Integer orderID, String status)
	{
		String insertQuery = "update order_main set STATUS='"+status+"' where id='"+orderID+"' ";
		dbConnectionHandler.executeUpdate(insertQuery);
	}
	public void saveOrderBill(Bill newBill){
		String query = "INSERT INTO order_bill (order_id,bill_amount,created_by,created_on,updated_on,STATUS) values('"+newBill.getOrderID()+"','"+newBill.getBilled_amount()+"','"+newBill.getCreatedBy()+"','"+newBill.getCreatedOn()+"','"+newBill.getUpdatedOn()+"','"+newBill.getStatus()+"')";
		dbConnectionHandler.executeUpdate(query);
	}

}
