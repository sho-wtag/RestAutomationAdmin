
<%@page import="com.comsats.restauto.util.MultipartHandler"%>
<%@page import="com.comsats.restauto.controller.GreetingController"%>
<%@page import="com.comsats.restauto.entity.Greeting"%>
<%
MultipartHandler multipart = new MultipartHandler(request, config, "greeting");

String event = multipart.getParameter("event");
String id = multipart.getParameter("id");
String greetingTitle = multipart.getParameter("greetingTitle");
String greetingDescription = multipart.getParameter("greetingDescription");
String greetingDate = multipart.getParameter("greetingDate");
String status = multipart.getParameter("status");
String banner = multipart.getFileParameter("greeting_image", true);
String check = multipart.getParameter("check");

Greeting greeting = new Greeting();
greeting.setGreetingId(id);
greeting.setGreetingDate(greetingDate);
greeting.setGreetingDescription(greetingDescription);
greeting.setGreetingTitle(greetingTitle);
greeting.setStatus(status);
if(banner == null || banner.equals(""))
{
	greeting.setBanner(check);
}
else
{
greeting.setBanner(banner);
}


GreetingController gc = new GreetingController();
if ("add".equalsIgnoreCase(event)) {
	 gc.saveGreeting(greeting);
	 response.sendRedirect("../add_message.jsp?action=add_success");
} else if ("update".equalsIgnoreCase(event)) {
	gc.updateGreeting(greeting);
	response.sendRedirect("../add_message.jsp?id="+ greeting.getGreetingId() +"&action=add_success");
}
%>
 