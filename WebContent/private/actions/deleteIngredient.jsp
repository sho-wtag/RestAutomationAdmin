<%@page import="com.comsats.restauto.controller.IngredientController"%>
<% 
IngredientController ingredientCountroller = new IngredientController();

int value = Integer.parseInt(request.getParameter("action"));

	ingredientCountroller.deleteIngredient(value);

%>
<jsp:include page="../suggestions/ingredientSuggestions.jsp" >
	        <jsp:param name="q" value="0" />
	        
	</jsp:include>


