<%@page import="com.comsats.restauto.entity.Table"%>
<%@page import="com.comsats.restauto.controller.TableController"%>
<%@page import="com.comsats.restauto.constVar.UpdateConst"%>
<%
UpdateConst constant = new UpdateConst();
TableController tableController = new TableController();
String value = (String)request.getParameter("q"); 
%>

<table class="documentation">
<thead>
	<tr><th>Serial No</th><th>Table Number</th><th>Description</th><th>Status</th><th>Edit<th>Delete</th></tr>
</thead>
<tbody>
<% 
int count = 1;
for(Table var : tableController.suggestTable(value))
	
{
%>

	<tr><th><%=count++ %></th><td><%=var.getTableNumber() %></td><td><%=var.getTableDescription() %></td><td><%=var.getStatus() %></td>
	<td>
	<a href="<%=constant.getTable() + "?id=" + var.getTableID() + "&tableNumber=" + var.getTableNumber() +"&tableDescription=" + var.getTableDescription() + "&status=" + var.getStatus()+"#edittable"%>">Edit</a></td>
	<td><button onclick="deleteRecord('<%=var.getTableID() %>','actions/<%=constant.getDeleteTable()%>','suggestTable');">Delete</button></td>
	</tr>
<% 
	}
%>
	
	
	</tbody>
	</table>

