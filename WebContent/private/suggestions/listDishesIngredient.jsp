<%@page import="com.comsats.restauto.entity.Dish"%>
<%@page import="com.comsats.restauto.controller.DishController"%>
<%
DishController listDish = new DishController();
int value = Integer.parseInt(request.getParameter("q"));
%>
<select name="dishID" id="dishID" onchange="showHint(this.value,'suggestIngredient','suggestions/ingredientSuggestions.jsp')">
<option value="0" selected="selected">Select</option>
<%
for(Dish var : listDish.listDishes(value))
{
	%>
	<option value="<%=var.getDishID() %>"><%=var.getDishName() %></option>
	<%
}
%>
</select>