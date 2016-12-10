<%@page import="com.comsats.restauto.controller.CallWaiterController"%>
<% 
CallWaiterController deleteController = new CallWaiterController();

int value = Integer.parseInt(request.getParameter("action")); 

	deleteController.deleteCall(value);
%>
<jsp:include page="../suggestions/getNewCalls.jsp" >
	        <jsp:param name="q" value="new" />
	        
	</jsp:include>


