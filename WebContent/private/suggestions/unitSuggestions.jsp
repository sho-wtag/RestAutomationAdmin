<%@page import="com.comsats.restauto.entity.Unit"%>
<%@page import="com.comsats.restauto.controller.UnitController"%>
<%@page import="com.comsats.restauto.constVar.UpdateConst"%>
<%
UpdateConst constant = new UpdateConst();
UnitController unitController = new UnitController();
String value = (String)request.getParameter("q"); 
%>

<table class="documentation">
<thead>
	<tr><th>Serial No</th><th>Unit Name</th><th>Status</th><th>Edit<th>Delete</th></tr>
</thead>
<tbody>
<% 
int count = 1;
for(Unit var : unitController.suggestUnit(value))
	
{
%>

	<tr><th><%=count++ %></th><td><%=var.getUnitName() %></td><td><%=var.getStatus() %></td>
	<td>
	<a href="<%=constant.getAddUnit() + "?id=" + var.getUnitID() + "&unitName=" + var.getUnitName() + "&status=" + var.getStatus()+"#editunit"%>">Edit</a></td>
	<td><button onclick="deleteRecord('<%=var.getUnitID() %>','actions/<%=constant.getDeleteUnit()%>','unitSuggest');">Delete</button></td>
	</tr>
<% 
	}
%>
	
	
	</tbody>
	</table>

