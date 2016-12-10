<%@page import="com.comsats.restauto.dao.GenericDAO"%><%@page import="java.sql.DriverManager"%><%@page import="net.sf.jasperreports.engine.data.JRBeanCollectionDataSource"%><%@page import="java.text.SimpleDateFormat"%><%@page import="java.text.DateFormat"%><%@page import="java.util.Calendar"%><%@page import="java.util.Date"%><%@page import="net.sf.jasperreports.engine.JRExporterParameter"%><%@page import="net.sf.jasperreports.engine.export.JRPdfExporter"%><%@page import="net.sf.jasperreports.engine.JREmptyDataSource"%><%@page import="net.sf.jasperreports.engine.JasperFillManager"%><%@page import="net.sf.jasperreports.engine.JasperPrint"%><%@page import="java.util.Map"%><%@page import="java.util.HashMap"%><%@page import="net.sf.jasperreports.engine.JRRuntimeException"%><%@page import="java.io.File"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="com.comsats.restauto.entity.Bill"%>
<%@page import="com.comsats.restauto.controller.OrderController"%>
<%
OrderController orderController = new OrderController();
String orderID = request.getParameter("id");
String status = request.getParameter("status");

orderController.updateOrderStatus(Integer.parseInt(orderID), status);

if(status.equals("cancelled") || status.equals("confirmed")){
response.sendRedirect("../new_orders.jsp");
}
else if (status.equals("delivered"))
{
	response.sendRedirect("../confirmed_orders.jsp");	
}
else if (status.equals("billed"))
{
	Bill newBill = new Bill();
	Integer roleID =  Integer.parseInt(session.getAttribute("sessionUserID").toString());
	DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	Date date = new Date();
	String orderBillTime = dateFormat.format(date);
	
	newBill.setOrderID(Integer.parseInt(orderID));
	newBill.setBilled_amount(Float.parseFloat(request.getParameter("bill_amount")));
	newBill.setCreatedBy(roleID);
	newBill.setCreatedOn(orderBillTime);
	newBill.setUpdatedOn(orderBillTime);
	newBill.setStatus("billed");
	
	orderController.saveOrderBill(newBill);
	
	response.sendRedirect("../delivered_orders.jsp");	
}
%>
