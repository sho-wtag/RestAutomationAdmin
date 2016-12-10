<%@page import="com.comsats.restauto.controller.IngredientController"%>
<%@page import="com.comsats.restauto.entity.Ingredient"%>
<%
String ingredientID = request.getParameter("id");
String ingredientDishID = request.getParameter("dishID");
String ingredientName = request.getParameter("ingredientName");
String ingredientStatus = request.getParameter("status");

Ingredient newIngredient = new Ingredient();
if(ingredientID != null && ingredientID != "")
{
newIngredient.setIngredientID(Integer.parseInt(ingredientID));
}
newIngredient.setIngredientDishID(Integer.parseInt(ingredientDishID));
newIngredient.setIngredientName(ingredientName);
newIngredient.setIngredientStatus(ingredientStatus);

IngredientController ingredientController = new IngredientController();

if(newIngredient.getIngredientID() != null)
{
	ingredientController.updateIngredient(newIngredient);
	response.sendRedirect("../add_ingredient.jsp?action=add_success&id=" + newIngredient.getIngredientID() + "&ingredientDishID=" + newIngredient.getIngredientDishID() +"&name=" + newIngredient.getIngredientName() + "&status=" + newIngredient.getIngredientStatus());
}
else
{
	ingredientController.saveIngredient(newIngredient);
	response.sendRedirect("../add_ingredient.jsp?action=add_success");
	
}



%>