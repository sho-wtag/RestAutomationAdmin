<%@page import="com.comsats.restauto.controller.AdsController"%>
<%@page import="com.comsats.restauto.entity.Ad"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileUploadException"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.FileItemFactory"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>

<%
AdsController adController = new AdsController();
Ad newAd = new Ad();

boolean isMultipart = ServletFileUpload.isMultipartContent(request);
if (!isMultipart) {
} else {
	
	FileItemFactory factory = new DiskFileItemFactory();
	   ServletFileUpload upload = new ServletFileUpload(factory);
	   List items = null;
	   try {
		   items = upload.parseRequest(request);
		   } catch (FileUploadException e) {
		   e.printStackTrace();
		   }
		   Iterator itr = items.iterator();
		   
		   while (itr.hasNext()) 
		   {
	   FileItem item = (FileItem) itr.next();
	   if (item.isFormField())
	   {
		   String name = item.getFieldName();
		   String value = item.getString();
		   if ("id".equals(name) && value != null && !"".equals(value)) {
       		newAd.setAdId(Integer.parseInt(value));
       		} else if ("ad_name".equals(name)) {
				newAd.setAdName(value);
			} else if ("description".equals(name)) {
				newAd.setAdDescription(value);
			} else if ("status".equals(name)) {
				newAd.setStatus(value);
			} else if("check".equals(name))
			{
				newAd.setBannerName(value);
			}
			
	   }
	   else
	   {
		   try {
			String itemName = item.getName();
			if(itemName.equals("") || itemName == null)
			{
				
			}
			else
			{
			File savedFile = new File(config.getServletContext().getRealPath("/")+"uploads/ads/"+itemName);
			   item.write(savedFile);
			   if("ad_image".equals(item.getFieldName()))
			   		{
				   		newAd.setBannerName(itemName);
			   		}
			}
			   } catch (Exception e) {
			   e.printStackTrace();
			   }		   
	   }
	   
		   }
	        if (newAd.getAdId() != null) {
	        	adController.updateAd(newAd);
	        	response.sendRedirect("../add_ads.jsp?id=" + newAd.getAdId()+ "&adName=" + newAd.getAdName()+ "&desc=" + newAd.getAdDescription() + "&image=" + newAd.getBannerName() + "&status=" + newAd.getStatus()+"&action=update_success");
	        } else {
	        	adController.saveAd(newAd);
	        	response.sendRedirect("../add_ads.jsp?action=add_success");
	        }
    
}
	

%>