
<% String role = (String)session.getAttribute("sessionUserRole");
if(role != null && role.equals("admin"))
{
%>
<nav>

	<ul id="nav">
		<li class="i_house"><a href="dashboard.jsp"><span>Dashboard</span></a></li>
		<li class="i_book"><a><span>Dish Management</span></a>
			<ul>
				<li><a href="add_category.jsp"><span>Category Management</span></a></li>
				
				<li><a href="add_dishes.jsp"><span>Dishes Management</span></a></li>
				
				<li><a href="add_ingredient.jsp"><span>Ingredients Management</span></a></li>
				

			</ul></li>
		<li class="i_book"><a href="#"><span>Order Management</span></a>
			<ul>
				<li><a href="new_orders.jsp"><span>New orders</span></a></li>
				<li><a href="confirmed_orders.jsp"><span>Confirm
							orders</span></a></li>
				<li><a href="delivered_orders.jsp"><span>Delivered
							orders</span></a></li>
				<li><a href="billed_orders.jsp"><span>Billed orders</span></a></li>
				<li><a href="history_orders.jsp"><span>Orders
							History</span></a></li>

			</ul></li>

		<li class="i_book"><a href="add_ads.jsp"><span>Ads
					Management</span></a></li>
		<li class="i_book"><a href="add_message.jsp"><span>Greeting
					Management</span></a>
			</li>
		<li class="i_book"><a href="feedback.jsp"><span>Feedback</span></a></li>
		<li class="i_book"><a href="#"><span>Reports</span></a>
			<ul>
				<li><a href="daily_sales_reports.jsp"><span>Daily Sales Reports</span></a></li>
				<li><a href="monthly_sales_reports.jsp"><span>Monthly Sales Reports</span></a></li>
				<li><a href="most_sold_reports.jsp"><span>Sold Dishes</span></a></li>
				<li><a href="profit_reports.jsp"><span>Trend Report(Profitable)</span></a></li>
			</ul></li>
		<li class="i_book"><a href="#"><span>General
					Configuration</span></a>
			<ul>
				<li><a href="tax_setting.jsp"><span>Tax Settings</span></a></li>
				<li><a href="table_setting.jsp"><span>Table settings</span></a></li>
				<li><a href="add_units.jsp"><span>Unit settings</span></a></li>
			</ul></li>
	</ul>
</nav>
<% 
}
else if(role != null && role.equals("counter")) 
{
	
	%>
<nav>

	<ul id="nav">
		<li class="i_house"><a href="#"><span>Dashboard</span></a></li>
		<li class="i_book"><a href="#"><span>Order Management</span></a>
			<ul>
				<li><a href="new_orders.jsp"><span>New orders</span></a></li>
				<li><a href="confirmed_orders.jsp"><span>Confirm
							orders</span></a></li>
			</ul></li>
	</ul>
</nav>

<%
	
}else if(role != null && role.equals("billing"))
{
	%>
<nav>

	<ul id="nav">
		<li class="i_house"><a href="#"><span>Dashboard</span></a></li>
		<li class="i_book"><a href="#"><span>Order Management</span></a>
			<ul>
				<li><a href="delivered_orders.jsp"><span>Delivered
							orders</span></a></li>
				<li><a href="billed_orders.jsp"><span>Billed orders</span></a></li>
			</ul></li>
	</ul>
</nav>
<%
}else if(role != null && role.equals("kitchen"))
{
	%>
<nav>

	<ul id="nav">
		<li class="i_house"><a href="#"><span>Dashboard</span></a></li>
		<li class="i_book"><a href="#"><span>Order Management</span></a>
			<ul>
				<li><a href="confirmed_orders.jsp"><span>Confirm
							orders</span></a></li>
			</ul></li>
	</ul>
</nav>

<%
}
%>
