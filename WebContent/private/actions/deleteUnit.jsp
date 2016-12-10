<%@page import="com.comsats.restauto.controller.UnitController"%>
<% 
UnitController unitController = new UnitController();

int value = Integer.parseInt(request.getParameter("action"));


unitController.deleteUnit(value);
%>
<jsp:include page="../suggestions/unitSuggestions.jsp" >
	        <jsp:param name="q" value="" />
	        
	</jsp:include>


