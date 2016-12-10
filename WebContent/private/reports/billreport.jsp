<%@page import="com.comsats.restauto.dao.GenericDAO"%><%@page import="java.sql.DriverManager"%><%@page import="net.sf.jasperreports.engine.data.JRBeanCollectionDataSource"%><%@page import="java.text.SimpleDateFormat"%><%@page import="java.text.DateFormat"%><%@page import="java.util.Calendar"%><%@page import="java.util.Date"%><%@page import="net.sf.jasperreports.engine.JRExporterParameter"%><%@page import="net.sf.jasperreports.engine.export.JRPdfExporter"%><%@page import="net.sf.jasperreports.engine.JREmptyDataSource"%><%@page import="net.sf.jasperreports.engine.JasperFillManager"%><%@page import="net.sf.jasperreports.engine.JasperPrint"%><%@page import="java.util.Map"%><%@page import="java.util.HashMap"%><%@page import="net.sf.jasperreports.engine.JRRuntimeException"%><%@page import="java.io.File"%><%
response.setContentType("application/pdf");
//response.setHeader("Content-Disposition", "inline; filename=dailyreport.pdf");
response.setHeader("Content-Disposition", "attachment; filename=order"+request.getParameter("id")+"_bill.pdf");
response.setHeader("Cache-Control", "no-cache");  
response.setDateHeader("Expires", 0);  
response.setHeader("Pragma", "No-cache");   

Integer id = Integer.parseInt(request.getParameter("id"));
String jasperFileName = "";
	jasperFileName = "receipt.jasper";	

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

parameters.put("id", id);
GenericDAO gd = new GenericDAO();
JasperPrint jasperPrint = JasperFillManager.fillReport(reportFileName, parameters, gd.getDbConnection());
JRPdfExporter exporter = new JRPdfExporter();
exporter.setParameter(JRExporterParameter.OUTPUT_STREAM, response.getOutputStream());
exporter.setParameter(JRExporterParameter.JASPER_PRINT, jasperPrint); 
exporter.exportReport();

%>