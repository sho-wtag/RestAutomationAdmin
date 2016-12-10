<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileUploadException"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.FileItemFactory"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="com.comsats.restauto.entity.Category"%>
<%@page import="com.comsats.restauto.controller.DishController"%>

<%
DishController dishController = new DishController();
Category newCategory = new Category();

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
       		newCategory.setCatId(Integer.parseInt(value));
       		} else if ("catName".equals(name)) {
				newCategory.setCatName(value);
			} else if ("status".equals(name)) {
				newCategory.setCatStatus(value);
			}else if("check".equals(name))
			{
				newCategory.setCatImage(value);
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
			File savedFile = new File(config.getServletContext().getRealPath("/")+"uploads/category/"+itemName);
			   item.write(savedFile);
			   if("catImage".equals(item.getFieldName()))
			   		{
				   		newCategory.setCatImage(itemName);
			   		}
			}
			   } catch (Exception e) {
			   e.printStackTrace();
			   }		   
	   }
	   
		   }
	        if (newCategory.getCatId() != null) {
	        	dishController.updateCategory(newCategory);
	        	response.sendRedirect("../add_category.jsp?id=" + newCategory.getCatId() + "&catName=" + newCategory.getCatName() + "&image=" + newCategory.getCatImage() + "&status=" + newCategory.getCatStatus()+"&action=update_success");
	        } else {
	        	dishController.saveCategory(newCategory);
	        	response.sendRedirect("../add_category.jsp?action=add_success");
	        }
    
}
	


/* 
String id = request.getParameter("id");
String catName = request.getParameter("catName");
String catStatus = request.getParameter("status");
DishController dishController = new DishController();
Category newCategory = new Category();
if(id == null)
{
newCategory.setCatName(catName);
newCategory.setCatStatus(catStatus);
dishController.saveCategory(newCategory);

response.sendRedirect("../add_category.jsp?action=add_success");
}
else 
{
	newCategory.setCatId(Integer.parseInt(id));
	newCategory.setCatName(catName);
	newCategory.setCatStatus(catStatus);
	dishController.updateCategory(newCategory);
	response.sendRedirect("../add_category.jsp?id=" + newCategory.getCatId() + "&catName=" + newCategory.getCatName() + "&status=" + newCategory.getCatStatus()+"&action=update_success");
}*/
%>