<%@page import="com.comsats.restauto.controller.FeedbackController"%>
<%@page import="com.comsats.restauto.entity.Feedback"%>

<%
FeedbackController controller = new FeedbackController(); 
for(Feedback var : controller.getFeedbackList())
{
%>


<form>
   <fieldset>
    
   <table width="100%" border="0">
  <tr>
    <td width="24%" style="font-size:16px; font-weight: bold;" >Customer ID</td>
    <td width="76%"><div style="float: left;"><%=var.getCustomerID() %></div><div style="float: right;">Date : <%=var.getFeedbackDate() %></div></td>
  </tr>
   <tr>
    <td width="24%">Rating</td>
    <td width="76%"><div class="rate"> <b style="width: <%=var.getFeedbackRatig()+"%" %>;"></b> </div></td>
  </tr>
</table>

             <label>Remark<br><span><%=var.getFeedbackRemarks() %></span></label>

		
		</fieldset>
		
	       </form>
   <%} %>
