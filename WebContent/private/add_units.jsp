<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="navigation.jsp"></jsp:include>
<section id="content">
  <div class="g12 nodrop">
    <h1>Unit Settings<button onclick="window.location=href='add_units.jsp#addunit'" style="float: right" >Insert Unit</button></h1>
  </div>
  <div class="g12">
   <form>
   <fieldset>
   <label>Search Unit</label>
  
   <section>
          <label for="input">Unit Name</label>
          <div>
            <input type="text" id="input" name="unit_name" onkeyup="showHint(this.value,'unitSuggest','suggestions/unitSuggestions.jsp')">
          </div>
          	<div id="unitSuggest" style="overflow-y: scroll; height: 200px;">
			<jsp:include page="suggestions/unitSuggestions.jsp">
				<jsp:param name="q" value="" />
			</jsp:include>
		</div>
        </section>
        </fieldset>
        </form>
	</div>
  
  
  <div class="g12">
  <% 
  String id = request.getParameter("id");
  if(id == null)
  {
  %>
  
    <form id="addunit" name="unitForm" action="actions/unit.jsp" method="post">
      <fieldset>
        <label>Add Unit</label>
      <%  String action = request.getParameter("action");
        if(action == null)
        {
        	
        }
      else if(action.equals("add_success"))
		{
			%>
			<div class="alert success">Unit added Successfully...</div>
			<%
		} %>
        <section>
          <label for="input">Unit Name</label>
          <div>
            <input type="text" id="input" name="unitName" required>
          </div>
        </section>
        <section>
          <label>Status</label>
          <div>
            <input type="radio" id="enable_status" name="status" value="enabled" checked >
            <label for="enable_radio">Enabled</label>
            <input type="radio" id="disable_status" name="status" value="disabled" >
            <label for="disable_radio">Disabled</label>
          </div>
        </section>
      &nbsp;
        <section>
          <div>
         	<button onclick="javascript:document.unitForm.reset()">Reset</button>
            <button onclick="javascript:document.unitForm.submit()">Submit</button>
          </div>
        </section>
      </fieldset>
    </form>
    <% 
    }
  else
  {
	%>
	  
    <form id="editunit" name="unitFormUpdate" action="actions/unit.jsp" method="post">
      <fieldset>
        <label>Edit Unit</label>
        <%  String action = request.getParameter("action");
        if(action == null)
        {
        	
        }
      else if(action.equals("update_success"))
		{
			%>
			<div class="alert success">Unit updated Successfully...</div>
			<%
		} %>
    <input type="hidden" name="id" value="<%=request.getParameter("id") %>" >
    
        <section>
          <label for="input">Unit Name</label>
          <div>
            <input type="text" id="input" name="unitName" value="<%=request.getParameter("unitName") %>" required>
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
         	<button onclick="javascript:document.unitFormUpdate.reset()">Reset</button>
            <button onclick="javascript:document.unitFormUpdate.submit()">Update</button>
          </div>
        </section>
      </fieldset>
    </form>
	  <%
  }
  
  %>
  </div>
  
  <div class="g6"> <br>
  </div>
</section>
<jsp:include page="footer.jsp"></jsp:include>

