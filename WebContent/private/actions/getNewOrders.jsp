<%@page import="com.comsats.restauto.controller.OrderController"%>
<%
OrderController orderController = new OrderController();
int count = orderController.getCount("new");
if(count > 0)
{	
out.print("<span>"+count+"</span");

}

%>


