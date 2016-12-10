<%@page import="com.comsats.restauto.controller.OrderController"%>
<%@page import="com.comsats.restauto.entity.OrderMain"%>
<%
String startDate = request.getParameter("startDate");
String endDate = request.getParameter("endDate");

OrderController orderController = new OrderController();

%>


       <table class="documentation">
			<thead>
				<tr>
				<th>Serial No</th>
				  <th>Order No</th>
				  <th>Table No</th>
				  <th>Status </th>
				  <th>View Order</th>
				</tr>
			</thead>
			<tbody>
<%
int serialNo = 1;
for(OrderMain var: orderController.getAllOrders(startDate, endDate))
{ %>
	
			<tr>
			<th><%=serialNo++ %></th>
			  <td><%=var.getID() %></td>
			  <td><%=var.getTableNo() %></td>
			  <td><%=var.getStatus()%></td>
			  <td><button onclick="window.open('orderDetailPopUp.jsp?id=<%=var.getID()%>','popUpWindow','height=500,width=800,left=10,top=10,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no, status=yes');">View</button></td>
			</tr>
<% 
}

%>
			
			</tbody>
			</table>
     
   
	