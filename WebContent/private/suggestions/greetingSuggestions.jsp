
<%@page import="com.comsats.restauto.constVar.UpdateConst"%>
<%@page import="com.comsats.restauto.entity.Greeting"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.comsats.restauto.controller.GreetingController"%>
<table class="documentation">
			<thead>
				<tr>
					<th>Title</th>
					<th>Description</th>
					<th>Banner</th>
					<th>Display Date</th>
					<th>Edit
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
			<%
			UpdateConst constant = new UpdateConst();
		GreetingController gc=new GreetingController();
		String q = (String)request.getParameter("q"); 
   	    ArrayList<Greeting> list=gc.getAllGreetingsList(null, q);
   		for(Greeting g:list){
			%>
				<tr>
					<th><%= g.getGreetingTitle() %></th>
					<td><%= g.getGreetingDescription()%></td>
					<td><%= g.getBanner()%></td>
					<td><%= g.getGreetingDate()%></td>
					
					<td><a href='add_message.jsp?id=<%= g.getGreetingId()%>#editmessage'>Edit</a></td>
					<td><button onclick="deleteRecord('<%=g.getGreetingId() %>','actions/<%=constant.getDeleteGreeting() %>','suggestGreeting');">Delete</button></td>
				</tr>
<%
   		}
%>

			</tbody>
		</table>