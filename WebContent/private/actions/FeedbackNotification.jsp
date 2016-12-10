<%@page import="com.comsats.restauto.controller.FeedbackController"%>
<%@page import="com.comsats.restauto.entity.Feedback"%>

<%
FeedbackController controller = new FeedbackController();
for(Feedback var : controller.getNewFeedbackList())
{	
	controller.updateNewFeedback(var.getFeedbackID());
	out.print("<div id='message_box'><img id='close_message' style='float:right;cursor:pointer'  src='../css/12-em-cross.png' />New Feedback Posted</div>");
}
%>
