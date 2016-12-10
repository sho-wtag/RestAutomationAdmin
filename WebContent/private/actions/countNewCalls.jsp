<%@page import="com.comsats.restauto.util.AePlayWave"%>
<%@page import="com.comsats.restauto.controller.CallWaiterController"%>
<%@page import="com.comsats.restauto.controller.FeedbackController"%>
<%@page import="com.comsats.restauto.entity.Feedback"%>

<%
CallWaiterController controller = new CallWaiterController();
int count = controller.getCount();
if(count > 0)
{	
	new AePlayWave(config.getServletContext().getRealPath("/")+"sounds/test.wav").start();	
out.print("<span>"+count+"</span");
}

%>