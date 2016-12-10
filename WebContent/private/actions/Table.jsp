<%@page import="com.comsats.restauto.controller.TableController"%>
<%@page import="com.comsats.restauto.entity.Table"%>
<% 
String id = request.getParameter("id");
String tableNumber = request.getParameter("tableNumber");
String tableDescription = request.getParameter("tableDescription");
String status = request.getParameter("status");

Table newTable = new Table();
if(id != null && id != "")
{
newTable.setTableID(Integer.parseInt(id));
}
newTable.setTableNumber(Integer.parseInt(tableNumber));
newTable.setTableDescription(tableDescription);
newTable.setStatus(status);

TableController tableController = new TableController();

if(newTable.getTableID() != null)
{
	tableController.updateTable(newTable);
	response.sendRedirect("../table_setting.jsp?action=add_success&id=" + newTable.getTableID() + "&tableNumber=" + newTable.getTableNumber() +"&tableDescription=" + newTable.getTableDescription() + "&status=" + newTable.getStatus());
}
else
{
	tableController.saveTable(newTable);
	response.sendRedirect("../table_setting.jsp?action=add_success");
	
}


%>