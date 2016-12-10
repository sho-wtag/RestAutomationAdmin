<%@page import="com.comsats.restauto.controller.RegisterController"%>
<% 
RegisterController registerController = new RegisterController();

int value = Integer.parseInt(request.getParameter("action"));

	registerController.deleteUser(value);

%>
<jsp:include page="../suggestions/userSuggestions.jsp" >
	        <jsp:param name="q" value="" />
	        
	</jsp:include>


