<%@page import="com.comsats.restauto.entity.Register"%>
<%@page import="com.comsats.restauto.controller.RegisterController"%>
<%@page import="com.comsats.restauto.constVar.UpdateConst"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<% 
UpdateConst constant = new UpdateConst();
RegisterController registerController = new RegisterController();

String value = (String)request.getParameter("q"); %>

<table class="documentation">
<thead>
	<tr><th>Serial No</th><th>Role</th><th>User Name</th><th>Password</th><th>Status</th><th>Edit<th>Delete</th></tr>
</thead>
<tbody>
<% 
int count = 1;
for(Register var : registerController.suggestUser(value))
	
{
%>

	<tr><th><%=count++ %></th><td><%=var.getUserRole() %></td><td><%=var.getUserName() %></td><td><%=var.getUserPassword() %></td><td><%=var.getStatus() %></td>
	<td><a href="<%=constant.getRegister() + "?id=" + var.getUserID() + "&role=" + var.getUserRole() +"&username=" + var.getUserName() + "&pass=" + var.getUserPassword() + "&firstname=" +var.getUserFirstName() + "&lastname=" + var.getUserLastName() + "&email=" + var.getUserEmail() + "&address=" + var.getUserAddress() + "&cnic=" + var.getUserCnic() + "&tele=" + var.getUserTele() + "&image=" + var.getUserImage() + "&status=" + var.getStatus()%>">Edit</a></td>
	<td><button onclick="deleteRecord('<%=var.getUserID() %>','actions/<%=constant.getDeleteRegister()%>','userSuggest');">Delete</button></td>
	</tr>
<% 
	}
%>
	
	
	</tbody>
	</table>

