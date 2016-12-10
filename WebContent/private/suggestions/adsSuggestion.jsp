<%@page import="com.comsats.restauto.entity.Ad"%>
<%@page import="com.comsats.restauto.controller.AdsController"%>
<%@page import="com.comsats.restauto.constVar.UpdateConst"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<% 
UpdateConst constant = new UpdateConst();
AdsController suggestAd = new AdsController();

String value = (String)request.getParameter("q"); %>

<table class="documentation">
<thead>
	<tr><th>Serial No</th><th>Name</th><th>Status</th><th>Edit<th>Delete</th></tr>
</thead>
<tbody>
<% 
int count = 1;
for(Ad var : suggestAd.getAdsList(value))
	
{
%>

	<tr><th><%=count++ %></th><td><%=var.getAdName() %></td><td><%=var.getStatus() %></td><td>
	<a href="<%=constant.getAddAds() + "?id=" + var.getAdId() + "&adName=" + var.getAdName() +"&desc=" + var.getAdDescription()+"&image=" + var.getBannerName() + "&status=" + var.getStatus()+"#edit"%>">Edit</a></td>
	<td><button onclick="deleteRecord('<%=var.getAdId() %>','actions/<%=constant.getDelAds()%>','adSuggest');">Delete</button></td>
	</tr>
<% 
	}
%>
	
	
	</tbody>
	</table>

