<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="org.apache.commons.fileupload.FileUploadException"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.FileItemFactory"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="com.comsats.restauto.controller.DishController"%>
<%@page import="com.comsats.restauto.entity.Dish"%>
<%


DishController dishController = new DishController();
Dish newDish = new Dish();

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
		   if ("dishName".equals(name)) {
				newDish.setDishName(value);
			}else if ("id".equals(name) && value != null && !"".equals(value)) {
				
				newDish.setDishID(Integer.parseInt(value));
			}else if ("catId".equals(name)) {
				
				newDish.setDishCategory(Integer.parseInt(value));
			}else if("dishDescription".equals(name))
			{
				newDish.setDishDescription(value);
			}
			else if("dishPrice".equals(name))
			{
				newDish.setDishPrice(value);
			}
			else if("dishCalories".equals(name))
			{
				newDish.setDishCalories(value);
			}
			else if("dishDiscount".equals(name))
			{
				newDish.setDishDiscount(value);
			}
			else if("dishCookTime".equals(name))
			{
				newDish.setDishCookTime(value);
			}
			else if("hot".equals(name))
			{
				newDish.setDishHot(value);
			}
			else if("dropdownUnit".equals(name))
			{
				newDish.setDishUnit(value);
			}
			else if("status".equals(name))
			{
				newDish.setDishStatus(value);
			}else if("check".equals(name))
			{
				newDish.setDishImage(value);
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
			File savedFile = new File(config.getServletContext().getRealPath("/")+"uploads/dish/"+itemName);
			   item.write(savedFile);
			   if("dish_image".equals(item.getFieldName()))
			   		{
				   		newDish.setDishImage(itemName);
			   		}
			}
			   } catch (Exception e) {
			   e.printStackTrace();
			   }		   
	   }
	   
		   }
		   
	        if (newDish.getDishID()!= null) {
	        	dishController.updateDish(newDish);
	        	response.sendRedirect("../add_dishes.jsp?id=" + newDish.getDishID() + "&dishName=" + newDish.getDishName() + 
	        			"&catName=" + dishController.getCatName(newDish.getDishCategory())+
	        			"&desc=" + newDish.getDishDescription()+
	        			"&price="+ newDish.getDishPrice() +
	        			"&image=" + newDish.getDishImage() +
	        			"&calories=" + newDish.getDishCalories() +
	        			"&discount=" + newDish.getDishDiscount() +
	        			"&cookTime=" + newDish.getDishCookTime() +
	        			"&hot=" + newDish.getDishHot() +
	        			"&unit=" + newDish.getDishUnit() +
	        			"&status=" + newDish.getDishStatus() +
	        			"&catID=" + newDish.getDishCategory() + 
	        			"&action=update_success");
	       } else {
	    	   dishController.saveDish(newDish);
	       
	        	response.sendRedirect("../add_dishes.jsp?action=add_success");
	        } 
    
}
	
%>