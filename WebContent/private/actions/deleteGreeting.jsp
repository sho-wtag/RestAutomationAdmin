
<%@page import="com.comsats.restauto.controller.GreetingController"%>
<% 
	GreetingController greetingControler = new GreetingController();
	String id=request.getParameter("action");
	greetingControler.deleteGreeting(id);

%>
<jsp:include page="../suggestions/greetingSuggestions.jsp" >
	        <jsp:param name="q" value="" />
	        
	</jsp:include>
