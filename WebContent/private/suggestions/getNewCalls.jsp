<%@page import="com.comsats.restauto.entity.CallWaiter"%>
<%@page import="com.comsats.restauto.controller.CallWaiterController"%>
<%
String status = request.getParameter("q");

CallWaiterController callWaiterController = new CallWaiterController();
%>


       <table class="documentation">
			<thead>
				<tr>
				<th>Serial No</th>
				  <th>Table No</th>
				  <th>Date Time</th>
				  <th>Delete</th>
				</tr>
			</thead>
			<tbody>
<%
int serialNo = 1;
for(CallWaiter var: callWaiterController.getNewCallsList(status))
{ %>
	
			<tr>
			<th><%=serialNo++ %></th>
			  <td><%=var.getCalltableNo() %></td>
			  <td><%=var.getCallDateTime()%></td>
			  <td><button onclick="deleteRecord('<%=var.getCallID() %>','actions/deleteCall.jsp','newCalls');">Delete</button></td>
			</tr>
<% 
}

%>
			
			</tbody>
			</table>
     
   
	