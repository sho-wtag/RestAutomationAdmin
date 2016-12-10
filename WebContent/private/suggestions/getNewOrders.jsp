<%@page import="com.comsats.restauto.controller.OrderController"%>
<%@page import="com.comsats.restauto.entity.OrderMain"%>
<%
String status = request.getParameter("q");

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
for(OrderMain var: orderController.getNewOrders(status))
{ %>
	
			<tr>
			<th><%=serialNo++ %></th>
			  <td><%=var.getID() %></td>
			  <td><%=var.getTableNo() %></td>
			  <td><%=var.getStatus()%></td>
			  <td><button onclick="document.location.href = 'new_orders.jsp?id=<%=var.getID()%>#orderdetail';">View</button></td>
			</tr>
<% 
}

%>
			
			</tbody>
			</table>
     
   
	