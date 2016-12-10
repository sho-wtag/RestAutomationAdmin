<%@page import="com.comsats.restauto.entity.DailyChart"%>
<%@page import="com.comsats.restauto.controller.ChartController"%>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="navigation.jsp"></jsp:include>
			
		
		<section id="content">
       
				<% String role = (String)session.getAttribute("sessionUserRole");
if(role != null && role.equals("admin"))
{
%>
			
       <% }else if(role != null && role.equals("billing"))
       {
    	   response.sendRedirect(request.getContextPath()+"/private/delivered_orders.jsp"); // redirect client browser to the login page
       }
       else if(role != null && role.equals("counter"))
       {
    	   response.sendRedirect(request.getContextPath()+"/private/new_orders.jsp"); // redirect client browser to the login page
       }
       else if(role != null && role.equals("kitchen"))
       {
    	   response.sendRedirect(request.getContextPath()+"/private/confirmed_orders.jsp"); // redirect client browser to the login page
       }

%>
		<div class="g6 widgets">
		
			<div class="widget" id="calendar_widget" data-icon="calendar">
				<h3 class="handle">Calendar</h3>
				<div>
					<div class="calendar" data-header="small">
					</div>
				</div>
			</div>
			
		</div> 
		<% ChartController controller = new ChartController(); %>
		<div class="g6 widgets">
			<div class="widget" id="widget_charts" data-icon="graph">
				<h3 class="handle">Charts</h3>
				<div>
				<table class="chart" data-type="bars" data-stack="false">
							<thead>
								<tr>
									<th></th>
									<% for(DailyChart var : controller.getDailyChart())
									{ %>
									<th><%=var.getCategoryName() %></th>
									<%} %>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th>Daily Sale</th>
									<% for(DailyChart var : controller.getDailyChart())
									{ %>
									<td><%=var.getQuantity() %></td>
									<%} %>
								</tr>
							
								
							</tbody>

						</table>
					<p>
					<a class="btn" href="daily_sales_reports.jsp">See Complete Reports</a>
					</p>
					</div>
				</div>
				
			</div>
			
			
			
		    <div class="g12">
       <div class="cpanel">
  <div class="icon-wrapper">
    <div class="icon"><a href="add_category.jsp"><img src="../css/imgicons/dish-icon.png" alt=""><span>Dish Management</span></a></div>
  </div>
  <div class="icon-wrapper">
    <div class="icon"><a href="new_orders.jsp"><img src="../css/imgicons/order-icon.png" alt=""><span>Order Management</span></a></div>
  </div>
  <div class="icon-wrapper">
    <div class="icon"><a href="add_message.jsp"><img src="../css/imgicons/greeting-icon.png" alt=""><span>Greeting Management</span></a></div>
  </div>
  <div class="icon-wrapper">
    <div class="icon"><a href="add_ads.jsp"><img src="../css/imgicons/ad-icon.png" alt=""><span>Ads Management</span></a></div>
  </div>
  <div class="icon-wrapper">
    <div class="icon"><a href="feedback.jsp"><img src="../css/imgicons/feedback-icon.png" alt=""><span>Feedback</span></a></div>
  </div>
  <div class="icon-wrapper">
    <div class="icon"><a href="#"><img src="../css/imgicons/report-icon.png" alt=""><span>Reports</span></a></div>
  </div>
  <div class="icon-wrapper">
    <div class="icon"><a href="user_Mgt.jsp"><img src="../css/imgicons/user-icon.png" alt=""><span>User Management</span></a></div>
  </div>
  <div class="icon-wrapper">
    <div class="icon"><a href="tax_setting.jsp"><img src="../css/imgicons/settings-icon.png" alt=""><span>General Settings</span></a></div>
  </div>
  </div>
    </div>
   
   
			
			</section>
 <jsp:include page="footer.jsp"></jsp:include>

		