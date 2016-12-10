<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="org.apache.commons.fileupload.FileUploadException"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.FileItemFactory"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="com.comsats.restauto.entity.Register"%>
<%@page import="com.comsats.restauto.controller.RegisterController"%>
<% 
RegisterController registerController = new RegisterController();
Register newUser = new Register();
Integer profileID = null;

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
			   newUser.setUserID(Integer.parseInt(value));
		   }if ("profileID".equals(name) && value != null && !"".equals(value)) {
			   profileID = Integer.parseInt(value);
		   }else if ("userRole".equals(name)) {
				newUser.setUserRole(value);
			}else if ("userName".equals(name)) {
				newUser.setUserName(value);
			}else if ("userPassword".equals(name)) {
				newUser.setUserPassword(value);
			}else if ("userFirstName".equals(name)) {
				newUser.setUserFirstName(value);
			}else if ("userLastName".equals(name)) {
				newUser.setUserLastName(value);
			}else if ("userEmail".equals(name)) {
				newUser.setUserEmail(value);
			}else if ("userAddress".equals(name)) {
				newUser.setUserAddress(value);
			}else if ("userCnic".equals(name)) {
				newUser.setUserCnic(value);
			}else if ("userTele".equals(name)) {
				newUser.setUserTele(value);
			}else if ("status".equals(name)) {
				newUser.setStatus(value);
			}else if("check".equals(name))
			{
				newUser.setUserImage(value);
			}
			
			
	   }
	   else
	   {
		   try {
			String itemName = item.getName();
			//System.out.println(itemName);
			if(itemName.equals("") || itemName == null)
			{
				
			}
			else
			{
			File savedFile = new File(config.getServletContext().getRealPath("/")+"uploads/"+itemName);
			   item.write(savedFile);
			   if("userImage".equals(item.getFieldName()))
			   		{
				   		newUser.setUserImage(itemName);
			   		}
			}
			   } catch (Exception e) {
			   e.printStackTrace();
			   }		   
	   }
	   
		   }
	        if (newUser.getUserID() != null) {
	        	registerController.updateUser(newUser);
	        	response.sendRedirect("../user_reg.jsp?id=" + newUser.getUserID() + "&role=" + newUser.getUserRole() +"&username=" + newUser.getUserName() + "&pass=" + newUser.getUserPassword() + "&firstname=" +newUser.getUserFirstName() + "&lastname=" + newUser.getUserLastName() + "&email=" + newUser.getUserEmail() + "&address=" + newUser.getUserAddress() + "&cnic=" + newUser.getUserCnic() + "&tele=" + newUser.getUserTele() + "&image=" + newUser.getUserImage() + "&status=" + newUser.getStatus()+"&action=update_success");
	        }else if(profileID != null){
	        	newUser.setUserID(profileID);
	        	registerController.updateUser(newUser);
	        	response.sendRedirect("../profile.jsp?action=add_success");
	        }else {
	        	registerController.saveUser(newUser);
	        	response.sendRedirect("../user_reg.jsp?action=add_success");
	        }
    
}



%>