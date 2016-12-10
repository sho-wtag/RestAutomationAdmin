<%@page import="com.comsats.restauto.entity.Dish"%>
<%@page import="com.comsats.restauto.entity.OrderMain"%>
<%@page import="com.comsats.restauto.controller.OrderController"%>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="navigation.jsp"></jsp:include>
<section id="content">
  <div class="g12 nodrop">
    
  </div>
  <div class="g12">
  <form>
   <fieldset>
   <label>New Orders</label>
  <div id="newOrders" style="overflow-y:scroll; height: 600px;">
			<jsp:include page="suggestions/getNewOrders.jsp" >
        <jsp:param name="q" value="new" />
        
        
    </jsp:include>
			</div>
     </fieldset>
        </form>
        <%
        String id = request.getParameter("id"); 
        if(id == null || id.equals(""))
        {
        	
        }
        else
        {
        	OrderController orderController = new OrderController();
        	
        	OrderMain detail = orderController.getNewOrdersDetails(Integer.parseInt(id));
        %>
        
    <form id="orderdetail">
	<fieldset>
  <label>Order Details  </label>
   <table class="documentation">
			
			<tbody>
			<tr>
			  <th>Order No </th>
			  <td><%=detail.getID() %></td>
			</tr>
			<tr>
			  <th>Table No </th>
			  <td><%=detail.getTableNo() %></td>
			</tr>
			<tr>
			  <th>Order Time </th>
			  <td><%=detail.getOderDate() %></td>
			  </tr>
			<tr>
			  <th>Dish Items</th>
			  <td>
			  <table class="documentation">
			  <tr>
			  <th>Dish Name</th>
			  <th>Dish Quantity</th>
			  <th>Dish Price</th>
			  </tr>
			  <%
			  for(Dish newOrderDishes: orderController.getNewOrderDishesList(detail.getID()))
			  {
			  
			  %>
			  <tr>
			  <td><%=newOrderDishes.getDishName() %></td>
			  <td><%=newOrderDishes.getDishquantity() %></td>
			  <td><%=newOrderDishes.getDishPrice() %> PKR</td>
			  </tr>
			  <%} %>
			  </table>
			  </td>
			  </tr>
			<tr>
			  <th>Estimated Time </th>
			  <td><%=detail.getEstimatedTime() %> </td>
			  </tr>
			  
			  	<tr>
			  <th>Actual Time </th>
			  <td><%=detail.getActualTime() %> </td>
			  </tr>
			
			<tr>
			  <th>Customer Instructions</th>
			  <td><%=detail.getInstructions()%></td>
			  </tr>
			<tr>
			  <th>status</th>
			  <td><%=detail.getStatus()%></td>
			  </tr>
			</tbody>
			</table>
  <section>
  <button onclick="document.location.href = 'actions/Order.jsp?id=<%=detail.getID()%>&status=cancelled';">Cancel</button>
   <button onclick="document.location.href = 'actions/Order.jsp?id=<%=detail.getID()%>&status=confirmed';">Confirm</button>
  </section>
  </fieldset>
  </form>
  <%} %>
  </div>
  <div class="g6"> <br>
  
  </div>
</section>
<jsp:include page="footer.jsp"></jsp:include>

