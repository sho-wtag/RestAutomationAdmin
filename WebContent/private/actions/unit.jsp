<%@page import="com.comsats.restauto.controller.UnitController"%>
<%@page import="com.comsats.restauto.entity.Unit"%>
<%
String id = request.getParameter("id");
String unitName = request.getParameter("unitName");
String status = request.getParameter("status");

Unit newUnit = new Unit();
if(id != null && id != "")
{
newUnit.setUnitID(Integer.parseInt(id));
}
newUnit.setUnitName(unitName);
newUnit.setStatus(status);

UnitController unitController = new UnitController();

if(newUnit.getUnitID() != null)
{
	unitController.updateUnit(newUnit);
	response.sendRedirect("../add_units.jsp?action=update_success&id=" + newUnit.getUnitID() + "&unitName=" + newUnit.getUnitName() + "&status=" + newUnit.getStatus());
}
else
{
	unitController.saveUnit(newUnit);
	response.sendRedirect("../add_units.jsp?action=add_success");
	
}


%>