<%@page import="com.comsats.restauto.constVar.UpdateConst"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.comsats.restauto.entity.Category"%>
<%@page import="com.comsats.restauto.controller.DishController"%>
<% 
UpdateConst constant = new UpdateConst();
DishController suggestCat = new DishController();

String value = (String)request.getParameter("q"); %>

<table class="documentation">
<thead>
	<tr><th>Serial No</th><th>Name</th><th>Status</th><th>Edit<th>Delete</th></tr>
</thead>
<tbody>
<% 
int count = 1;
for(Category var : suggestCat.suggestCategory(value))
{
%>

	<tr><th><%=count++ %></th><td><%=var.getCatName() %></td><td><%=var.getCatStatus() %></td><td>
	<a href="<%=constant.getCategory() + "?id=" + var.getCatId() + "&catName=" + var.getCatName() +"&image=" + var.getCatImage() + "&status=" + var.getCatStatus()+"#editcategory"%>">Edit</a></td>
	<td><button onclick="deleteRecord('<%=var.getCatId() %>','actions/<%=constant.getDeleteCategory()%>','suggest');">Delete</button></td>
	</tr>
<% 
	}
%>
	
	
	</tbody>
	</table>

