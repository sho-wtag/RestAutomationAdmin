<%@page import="java.text.DecimalFormat"%>
<%@page import="com.comsats.restauto.controller.TaxController"%>
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
   <label>Billed Orders</label>
  <div id="billedOrders" style="overflow-y:scroll; height: 600px;">
			<jsp:include page="suggestions/getBilledOrders.jsp" >
        <jsp:param name="q" value="billed" />
        
        
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
        	
        	TaxController taxController = new TaxController();
        	
        	Float total = (float) 0.0;
			Float discount = (float) 0.0;
			String totalBill;
        %>
        
    <form id="billed">
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
			  <th>Dish Discount</th>
			  </tr>
			  <%
			  for(Dish newOrderDishes: orderController.getNewOrderDishesList(detail.getID()))
			  {
			  
			  %>
			  <tr>
			  <td><%=newOrderDishes.getDishName() %></td>
			  <td><%=newOrderDishes.getDishquantity() %></td>
			  <td><%=newOrderDishes.getDishPrice() %> PKR</td>
			  <td><%=newOrderDishes.getDishDiscount() %> %</td>
			  </tr>
			  <%
			  discount = (((float) Float.parseFloat(newOrderDishes.getDishDiscount())/100 )*Float.parseFloat(newOrderDishes.getDishPrice()))*Float.parseFloat(newOrderDishes.getDishquantity());
				total += Float.parseFloat(newOrderDishes.getDishPrice())*Float.parseFloat(newOrderDishes.getDishquantity())-discount;
			  } 
			  float tax;
				
				tax = ((float) Integer.parseInt(taxController.checkTax())/100)* total;
				total = total+tax;
				
				totalBill = new DecimalFormat(".##").format(total);
			  %>
			  
			  </table>
			  <p align="right" style="margin-right: 20px"><strong>Total Bill (Tax: <%=taxController.checkTax()%>%): <%=totalBill %> PKR </strong></p>
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
  <button onclick="document.location.href = 'reports/billreport.jsp?id=<%=detail.getID()%>';">Generate Bill</button>
  </section>
  </fieldset>
  </form>
  <%} %>
  </div>
  <div class="g6"> <br>
  
  </div>
</section>
<jsp:include page="footer.jsp"></jsp:include>

