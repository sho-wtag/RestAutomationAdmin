<%@page import="com.comsats.restauto.controller.TaxController"%>
<%@page import="com.comsats.restauto.entity.Tax"%>
<%
String taxRate = request.getParameter("taxRate");
String id = request.getParameter("id");
String status = request.getParameter("status");

Tax newTax = new Tax();
newTax.setTaxRate(Integer.parseInt(taxRate));
newTax.setStatus(status);

TaxController taxController = new TaxController();
if(id == null)
{
taxController.SaveTax(newTax);
}
else
{
	taxController.UpdateTax(newTax);
}


response.sendRedirect("../tax_setting.jsp?action=add_success");
%>