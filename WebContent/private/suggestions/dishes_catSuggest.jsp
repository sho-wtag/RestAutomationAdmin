<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.comsats.restauto.entity.Category"%>
<%@page import="com.comsats.restauto.controller.DishController"%>
<% 

DishController suggestCat = new DishController();

String value = (String)request.getParameter("q"); %>

<table class="documentation">
<thead>
	<tr><th>Serial No</th><th>Name</th><th>Status</th><th>select</th></tr>
</thead>
<tbody>
<% 
int count = 1;
for(Category var : suggestCat.suggestCategory(value))
	
{
%>
	
	
	<tr>
	<th><%=count++ %></th><td><%=var.getCatName() %></td><td><%=var.getCatStatus() %>
	</td><td><button onclick="selectName('<%=var.getCatName() %>','cat_name','<%=var.getCatId() %>','catId')">select</button><td>
	</tr>
	
	
<% 
	}
%>
	
	
	</tbody>
	</table>

