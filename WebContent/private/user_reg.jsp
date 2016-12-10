<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="navigation.jsp"></jsp:include>
<script type="text/javascript">
jQuery(function($){
   $("#cnic").mask("99999-9999999-9");
   $("#tele").mask("9999-9999999");

});
$("#email").wl_Mail([errorClass]); //shorthand for emails
</script>
<section id="content">
  <div class="g12 nodrop">
    <h1>Register User</h1>
  </div>
  <div class="g12">
   <% 
  String id = request.getParameter("id");
  if(id == null)
  {
  %>
    <form name="registerForm" action="actions/Register.jsp" method="post" enctype="multipart/form-data">
      <fieldset>
	  	 <label>New User</label>
	  	  <%  String action = request.getParameter("action");
        if(action == null)
        {
        	
        }
      else if(action.equals("add_success"))
		{
			%>
			<div class="alert success">User added Successfully...</div>
			<%
		} %>
    
	  <section>
							<label for="dropdown_Role">Role</label>
							<div>					
								<select name="userRole" id="userRole" >
									
										<option value="Select">Select</option>
										<option value="admin">admin</option>
										<option value="billing">billing</option>
									<option value="counter">counter</option>
									<option value="kitchen">kitchen</option>
								</select>
								
							</div>
						</section>
        
        <section>
          <label for="input">User Name</label>
          <div>
            <input type="text" id="input" name="userName" required>
          </div>
        </section>
      
	  <section>
          <label for="input">Password</label>
          <div>
            <input type="password" id="input" name="userPassword" required>
          </div>
        </section>
		<section>
          <label for="input">First Name</label>
          <div>
            <input type="text" id="input" name="userFirstName" required>
          </div>
        </section>
		<section>
          <label for="input">Last Name</label>
          <div>
            <input type="text" id="input" name="userLastName" required>
          </div>
        </section>
		<section><label for="email">Email</label>
						<div><input type="email" id="email" name="userEmail" required></div>
					</section>
		<section>
          <label for="input">Address</label>
          <div>
            <input type="text" id="input" name="userAddress" required>
          </div>
        </section>
		<section>
		<label for="integer">Cnic</label>
							<div>
							<input type="text" name="userCnic" id="cnic" required/>
							</div>
						</section>
	  <section>
          <label for="input">Telephone/Mobile</label>
          <div>
<input type="text" name="userTele" id="tele" required/>
          </div>
        </section>
	   <section>
          <label for="file_upload">Image<br>
            <span>Employee image will upload. size: 50px x 50px</span></label>
          <div>
            <input type="file" id="file_upload" name="userImage">
          </div>
        </section>
        <section>
          <label>Status</label>
          <div>
            <input type="radio" id="enable_radio" name="status" value="enabled" checked >
            <label for="enable_radio">Enabled</label>
            <input type="radio" id="disable_radio" name="status" value="disabled" >
            <label for="disable_radio">Disabled</label>
          </div>
        </section>
         &nbsp;
        <section>
          <div>
         	<button>Reset</button>
            <button onclick="javascript:document.registerForm.submit()">Submit</button>
          </div>
        </section>
      </fieldset>
    </form>
    <% }else
    	{%>
    	<form name="updateForm" action="actions/Register.jsp" method="post" enctype="multipart/form-data">
      <fieldset>
	  	 <label>New User</label>
	  	  <%  String action = request.getParameter("action");
        if(action == null)
        {
        	
        }
      else if(action.equals("update_success"))
		{
			%>
			<div class="alert success">User Updated Successfully...</div>
			<%
		} %>
    <input type="hidden" name="id" value="<%=request.getParameter("id") %>" >
    <input type="hidden" name="check" value="<%=request.getParameter("image") %>" >
	  <section>
							<label for="dropdown_Role">Role</label>
							<div>					
							<% if(request.getParameter("role").equals("admin"))
								{%>
								<select name="userRole" id="userRole" >
									
										<option value="Select">Select</option>
										<option value="admin" selected="selected">admin</option>
										<option value="billing">billing</option>
									<option value="counter">counter</option>
									<option value="kitchen">kitchen</option>
								</select>
								<%}else if(request.getParameter("role").equals("billing"))
									{%>
									<select name="userRole" id="userRole" >
									
										<option value="Select">Select</option>
										<option value="admin">admin</option>
										<option value="billing" selected="selected">billing</option>
									<option value="counter">counter</option>
									<option value="kitchen">kitchen</option>
								</select>
								<%}else if(request.getParameter("role").equals("counter"))
									{%>
									<select name="userRole" id="userRole" >
									
										<option value="Select">Select</option>
										<option value="admin">admin</option>
										<option value="billing">billing</option>
									<option value="counter" selected="selected">counter</option>
									<option value="kitchen">kitchen</option>
								</select>
								<%}else if(request.getParameter("role").equals("kitchen"))
									{%>
									<select name="userRole" id="userRole" >
									
										<option value="Select">Select</option>
										<option value="admin">admin</option>
										<option value="billing">billing</option>
									<option value="counter">counter</option>
									<option value="kitchen" selected="selected">kitchen</option>
								</select>
									<%} %>
							</div>
						</section>
        
        <section>
          <label for="input">User Name</label>
          <div>
            <input type="text" id="input" name="userName" value="<%=request.getParameter("username") %>" required>
          </div>
        </section>
      
	  <section>
          <label for="input">Password</label>
          <div>
            <input type="password" id="input" name="userPassword" value="<%=request.getParameter("pass") %>" required>
          </div>
        </section>
		<section>
          <label for="input">First Name</label>
          <div>
            <input type="text" id="input" name="userFirstName" value="<%=request.getParameter("firstname") %>" required>
          </div>
        </section>
		<section>
          <label for="input">Last Name</label>
          <div>
            <input type="text" id="input" name="userLastName" value="<%=request.getParameter("lastname") %>" required>
          </div>
        </section>
		<section><label for="email">Email</label>
						<div><input type="email" id="email" name="userEmail" value="<%=request.getParameter("email") %>" required></div>
					</section>
		<section>
          <label for="input">Address</label>
          <div>
            <input type="text" id="input" name="userAddress" value="<%=request.getParameter("address") %>" required>
          </div>
        </section>
		<section>
		<label for="integer">Cnic</label>
							<div>
							<input type="text" name="userCnic" id="cnic" value="<%=request.getParameter("cnic") %>" required/>
							</div>
						</section>
	  <section>
          <label for="input">Telephone/Mobile</label>
          <div>
<input type="text" name="userTele" id="tele" value="<%=request.getParameter("tele") %>" required/>
          </div>
        </section>
	   <section>
          <label for="file_upload">Image<br>
            <span>Employee image will upload. size: 50px x 50px</span></label>
          <div>
            <input type="file" id="file_upload" name="userImage">
            <div><img border="2" src=../uploads/<%=request.getParameter("image") %> width="137"  height="140" /></div>
          </div>
        </section>
        <section>
          <label>Status</label>
          <div>
            <% if(request.getParameter("status").equals("enabled"))
        	  {
        	  %>
            <input type="radio" id="enable_status" name="status" value="enabled" checked >
            <label for="enable_radio">Enabled</label>
            <input type="radio" id="disable_status" name="status" value="disabled" >
            <label for="disable_radio">Disabled</label>
            <% }else 
            {
            %>
             <input type="radio" id="enable_status" name="status" value="enabled" >
            <label for="enable_radio">Enabled</label>
            <input type="radio" id="disable_status" name="status" value="disabled" checked="checked" >
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
            <button onclick="javascript:document.updateForm.submit()">Submit</button>
          </div>
        </section>
      </fieldset>
    </form>
    	
    	<%} %>
    
  </div>
  <div class="g6"> <br>
  </div>
</section>
<jsp:include page="footer.jsp"></jsp:include>

