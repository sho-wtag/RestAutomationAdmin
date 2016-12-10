<%@page import="com.comsats.restauto.controller.DishController"%>
<% 
DishController dishController = new DishController();

int value = Integer.parseInt(request.getParameter("action"));

	dishController.deleteDish(value);
%>
<jsp:include page="../suggestions/dishSuggestions.jsp" >
	        <jsp:param name="q" value="" />
	        
	</jsp:include>


