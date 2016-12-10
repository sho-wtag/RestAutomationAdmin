<%@page import="com.comsats.restauto.entity.Ingredient"%>
<%@page import="com.comsats.restauto.controller.IngredientController"%>
<%@page import="com.comsats.restauto.constVar.UpdateConst"%>
<%
UpdateConst constant = new UpdateConst();
IngredientController suggestIng = new IngredientController();

Integer value = Integer.parseInt(request.getParameter("q"));
%>

<table class="documentation">
<thead>
	<tr><th>Serial No</th><th>Name</th><th>Status</th><th>Edit<th>Delete</th></tr>
</thead>
<tbody>
<% 
int count = 1;
for(Ingredient var : suggestIng.suggestIngredient(value))
{
%>

	<tr><th><%=count++ %></th><td><%=var.getIngredientName() %></td><td><%=var.getIngredientStatus() %></td><td>
	<a href="<%=constant.getAddIngredient() + "?id=" + var.getIngredientID() + "&ingredientDishID=" + var.getIngredientDishID() +"&name=" + var.getIngredientName() + "&status=" + var.getIngredientStatus()+"#editingredients"%>">Edit</a></td>
	<td><button onclick="deleteRecord('<%=var.getIngredientID() %>','actions/<%=constant.getDelIngredient()%>','suggestIngredient');"">Delete</button></td>
	</tr>
<% 
	}
%>
	
	
	</tbody>
	</table>

