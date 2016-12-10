<%@page import="java.text.DecimalFormat"%>
<%@page import="com.comsats.restauto.entity.Dish"%>
<%@page import="com.comsats.restauto.controller.TaxController"%>
<%@page import="com.comsats.restauto.entity.OrderMain"%>
<%@page import="com.comsats.restauto.controller.OrderController"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

	<!-- Google Font and style definitions -->
	<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=PT+Sans:regular,bold">
	<link rel="stylesheet" href="../css/style.css">
	
	<!-- include the skins (change to dark if you like) -->
	<link rel="stylesheet" href="../css/light/theme.css" id="themestyle">
	<!-- <link rel="stylesheet" href="css/dark/theme.css" id="themestyle"> -->
	
	<!--[if lt IE 9]>
	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<link rel="stylesheet" href="css/ie.css">
	<![endif]-->
	
<title>Order No <%=request.getParameter("id") %></title>
</head>
<body>
<div class="g12">
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
        
    <form>
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
  
  </section>
  </fieldset>
  </form>
  <%} %>
</div>
</body>
</html>