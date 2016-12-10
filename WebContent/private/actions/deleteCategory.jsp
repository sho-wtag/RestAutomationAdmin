<%@page import="com.comsats.restauto.controller.DishController"%>
<% 
DishController suggestCat = new DishController();

int value = Integer.parseInt(request.getParameter("action")); 

if(suggestCat.checkCategory(value) == 0)
{
	suggestCat.deleteCategory(value);
}
else{%>
	<div class="alert warning">Category have Dishes. Delete All Dishes First...</div>
	<% 
}
	
%>
<jsp:include page="../suggestions/catSuggestions.jsp" >
	        <jsp:param name="q" value="" />
	        
	</jsp:include>


