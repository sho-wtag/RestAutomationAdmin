<%@page import="com.comsats.restauto.entity.Dish"%>
<%@page import="com.comsats.restauto.constVar.UpdateConst"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.comsats.restauto.controller.DishController"%>
<% 
UpdateConst constant = new UpdateConst();
DishController suggest = new DishController();

String value = (String)request.getParameter("q"); %>
<table class="documentation">
<thead>
	<tr><th>Serial No</th><th>Name</th><th>Status</th><th>Edit<th>Delete</th></tr>
</thead>
<tbody>
<% 
int count = 1;
//System.out.println(suggest.getCatName(1));


for(Dish var : suggest.suggestDish(value))
{ 
	
%>
	
	<tr><th><%=count++ %></th><td><%=var.getDishName()%></td><td><%=var.getDishStatus()%></td><td>
	<a href="<%=constant.getDish() + "?id=" + var.getDishID() + "&dishName=" + var.getDishName() + 
	"&desc=" + var.getDishDescription() + "&price=" + var.getDishPrice() + 
	"&catID="+ var.getDishCategory()+
	"&catName=" + suggest.getCatName(var.getDishCategory())+ 
	"&calories=" + var.getDishCalories() + 
	"&discount=" + var.getDishDiscount() + 
	"&cookTime=" + var.getDishCookTime() + 
	"&image=" + var.getDishImage() + 
	"&hot=" +var.getDishHot()+
	"&unit=" +var.getDishUnit()+
	"&status=" + var.getDishStatus()+ 
	"#editdish"
	%>">Edit</a></td>
	
	<td> 
	<button onclick="deleteRecord('<%=var.getDishID() %>','actions/<%=constant.getDeleteDish()%>','dishSuggest');">Delete</button>
	</td>
	</tr>
<% 
	}
%>
	
	
	</tbody>
	</table>

