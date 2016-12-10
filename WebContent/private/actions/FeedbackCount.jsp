<%@page import="com.comsats.restauto.controller.FeedbackController"%>
<%@page import="com.comsats.restauto.entity.Feedback"%>

<%
FeedbackController controller = new FeedbackController();
int count = controller.getCount();
if(count > 0)
{	
out.print("<span>"+count+"</span");

}

%>