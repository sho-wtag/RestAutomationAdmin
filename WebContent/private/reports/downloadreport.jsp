<%@page import="com.comsats.restauto.dao.GenericDAO"%><%@page import="java.sql.DriverManager"%><%@page import="net.sf.jasperreports.engine.data.JRBeanCollectionDataSource"%><%@page import="java.text.SimpleDateFormat"%><%@page import="java.text.DateFormat"%><%@page import="java.util.Calendar"%><%@page import="java.util.Date"%><%@page import="net.sf.jasperreports.engine.JRExporterParameter"%><%@page import="net.sf.jasperreports.engine.export.JRPdfExporter"%><%@page import="net.sf.jasperreports.engine.JREmptyDataSource"%><%@page import="net.sf.jasperreports.engine.JasperFillManager"%><%@page import="net.sf.jasperreports.engine.JasperPrint"%><%@page import="java.util.Map"%><%@page import="java.util.HashMap"%><%@page import="net.sf.jasperreports.engine.JRRuntimeException"%><%@page import="java.io.File"%><%
response.setContentType("application/pdf");
//response.setHeader("Content-Disposition", "inline; filename=dailyreport.pdf");
response.setHeader("Content-Disposition", "attachment; filename="+request.getParameter("reportName")+"report.pdf");
response.setHeader("Cache-Control", "no-cache");  
response.setDateHeader("Expires", 0);  
response.setHeader("Pragma", "No-cache");   

String startDateString = (String)request.getParameter("StartDate");
String endDateString = (String)request.getParameter("EndDate");
String reportName = (String)request.getParameter("reportName");
String jasperFileName = "";
if ("daily".equalsIgnoreCase(reportName)) {
	jasperFileName = "daily_sales_report.jasper";
} else if ("monthly".equalsIgnoreCase(reportName)) {
	jasperFileName = "monthly_sales_report.jasper";	
} else if ("most_sold".equalsIgnoreCase(reportName)) {
	jasperFileName = "most_sold_items_report.jasper";	
} else if ("most_profitable".equalsIgnoreCase(reportName)) {
	jasperFileName = "most_profitable_items_report.jasper";	
}

String reportFileName = application.getRealPath("/jreports/"+jasperFileName);
File reportFile = new File(reportFileName);
if (!reportFile.exists())
	throw new JRRuntimeException("File WebappReport.jasper not found. The report design must be compiled first.");

Map parameters = new HashMap();
/*Calendar cal = Calendar.getInstance();
cal.set(Calendar.MONTH, 0);
cal.set(Calendar.YEAR, 2013);

DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
Date date = new Date();
System.out.println(dateFormat.format(cal.getTime()));
parameters.put("startDate", dateFormat.format(cal.getTime()));
cal.set(Calendar.MONTH, 11);
parameters.put("endDate", dateFormat.format(cal.getTime()));
*/

parameters.put("startDate", startDateString);
parameters.put("endDate", endDateString);
GenericDAO gd = new GenericDAO();
JasperPrint jasperPrint = JasperFillManager.fillReport(reportFileName, parameters, gd.getDbConnection());
JRPdfExporter exporter = new JRPdfExporter();
exporter.setParameter(JRExporterParameter.OUTPUT_STREAM, response.getOutputStream());
exporter.setParameter(JRExporterParameter.JASPER_PRINT, jasperPrint); 
exporter.exportReport();

%>