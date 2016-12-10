<% 
session.removeAttribute("sessionUserName");
session.invalidate(); // destorys the session
response.sendRedirect(request.getContextPath()+"/login.jsp"); // redirect client browser to the login page
%>