<%@page import="com.comsats.restauto.controller.TableController"%>
<% 
TableController tableController = new TableController();

int value = Integer.parseInt(request.getParameter("action"));

if(tableController.checkTable(value) == 0)
{
tableController.deleteTable(value);
}
else
{
	%>
	<div class="alert warning">Operation cannot be performed at this time, Table is in use.</div>
	<%
}
%>
<jsp:include page="../suggestions/tableSuggestions.jsp" >
	        <jsp:param name="q" value="" />
	        
	</jsp:include>


