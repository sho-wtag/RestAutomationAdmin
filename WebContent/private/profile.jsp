<%@page import="com.comsats.restauto.entity.Register"%>
<%@page import="com.comsats.restauto.controller.RegisterController"%>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="navigation.jsp"></jsp:include>
<script type="text/javascript">
jQuery(function($){
   $("#cnic").mask("99999-9999999-9");
   $("#tele").mask("9999-9999999");

});
$("#email").wl_Mail([errorClass]); //shorthand for emails
</script>

<% 
Integer ID = (Integer)session.getAttribute("sessionUserID");
RegisterController registerController = new RegisterController();
Register obj = registerController.getProfile(ID);
%>

<section id="content">
  <div class="g12 nodrop">
    <h1>User Profile</h1>
  </div>
  <div class="g12">
   
    <form name="profileForm" action="actions/Register.jsp" method="post" enctype="multipart/form-data">
      <fieldset>
	  	 <label>Details</label>
	  	  <%  String action = request.getParameter("action");
        if(action == null)
        {
        	
        }
      else if(action.equals("add_success"))
		{
			%>
			<div class="alert success">Profile Updated Successfully...</div>
			<%
		} %>
    <input type="hidden" name="profileID" value="<%=obj.getUserID() %>" >
    <input type="hidden" name="check" value="<%=obj.getUserImage() %>" >
    <input type="hidden" name="userRole" value="<%=obj.getUserRole() %>" >
    <input type="hidden" name="status" value="<%=obj.getStatus() %>" >
    
	  <section>
							<label for="dropdown_Role">Role</label>
							<label for="dropdown_Role" style="font-weight: bold;"><%=obj.getUserRole() %></label>
						</section>
        
        <section>
          <label for="input">User Name</label>
          <div>
            <input type="text" id="input" name="userName" value="<%=obj.getUserName() %>" required>
          </div>
        </section>
      
	  <section>
          <label for="input">Password</label>
          <div>
            <input type="password" id="input" name="userPassword" value="<%=obj.getUserPassword() %>" required>
          </div>
        </section>
		<section>
          <label for="input">First Name</label>
          <div>
            <input type="text" id="input" name="userFirstName" value="<%=obj.getUserFirstName() %>" required>
          </div>
        </section>
		<section>
          <label for="input">Last Name</label>
          <div>
            <input type="text" id="input" name="userLastName" value="<%=obj.getUserLastName() %>" required>
          </div>
        </section>
		<section><label for="email">Email</label>
						<div><input type="email" id="email" name="userEmail" value="<%=obj.getUserEmail() %>" required></div>
					</section>
		<section>
          <label for="input">Address</label>
          <div>
            <input type="text" id="input" name="userAddress" value="<%=obj.getUserAddress() %>" required>
          </div>
        </section>
		<section>
		<label for="integer">Cnic</label>
							<div>
							<input type="text" name="userCnic" id="cnic" value="<%=obj.getUserCnic() %>" required/>
							</div>
						</section>
	  <section>
          <label for="input">Telephone/Mobile</label>
          <div>
<input type="text" name="userTele" id="tele" value="<%=obj.getUserTele() %>" required/>
          </div>
        </section>
	   <section>
          <label for="file_upload">Image<br>
            <span>Employee image will upload. size: 50px x 50px</span></label>
          <div>
            <input type="file" id="file_upload" name="userImage">
            <div><img border="2" src=../uploads/<%=obj.getUserImage() %> width="137"  height="140" /></div>
          </div>
        </section>
        <section>
          <label>Status</label>
          <div>
            <% if(obj.getStatus().equals("enabled"))
        	  {
        	  %>
            <input type="radio" id="enable_status" name="status" value="enabled" checked disabled="disabled" >
            <label for="enable_radio">Enabled</label>
            <input type="radio" id="disable_status" name="status" value="disabled" disabled="disabled">
            <label for="disable_radio">Disabled</label>
            <% }else 
            {
            %>
             <input type="radio" id="enable_status" name="status" value="enabled" disabled="disabled">
            <label for="enable_radio">Enabled</label>
            <input type="radio" id="disable_status" name="status" value="disabled" checked="checked" disabled="disabled">
            <label for="disable_radio">Disabled</label>
            <%
            }
            %>
          </div>
        </section>
         &nbsp;
        <section>
          <div>
         	<button>Reset</button>
            <button onclick="javascript:document.profileForm.submit()">Update</button>
          </div>
        </section>
      </fieldset>
    </form>
        
  </div>
  <div class="g6"> <br>
  </div>
</section>
<jsp:include page="footer.jsp"></jsp:include>

