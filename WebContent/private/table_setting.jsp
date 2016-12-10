<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="navigation.jsp"></jsp:include>

<section id="content">
  <div class="g12 nodrop">
    <h2>Table Settings <button onclick="window.location=href='table_setting.jsp#addtable'" style="float: right" >Insert Table</button></h2>
  </div>
   <div class="g12">
   <form>
   <fieldset>
   <label>SearchTable</label>
  
   <section>
          <label for="input">Table Number</label>
          <div>
            <input type="text" id="input" name="table_Number" onkeyup="showHint(this.value,'suggestTable','suggestions/tableSuggestions.jsp')">
          </div>
          <div id="suggestTable" style="overflow-y:scroll; height: 200px;">
			<jsp:include page="suggestions/tableSuggestions.jsp" >
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
  { %>
   <form id="addtable" name="tableForm" action="actions/Table.jsp" method="post">
   <fieldset>
   <label>Add Table</label>
   <%  
   String action = request.getParameter("action");
        if(action == null)
        {
        	
        }
      else if(action.equals("add_success"))
		{
			%>
			<div class="alert success">Table Detail added Successfully...</div>
			<%
		} %>
   <section><label for="text_tooltip">Table Number</label>
   
							<div><input type="text" id="input" name="tableNumber" required="required">
							</div>
						</section>
						<section><label for="textarea">Description</label>
						<div><textarea id="textarea" name="tableDescription" rows="2" required></textarea></div>
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
						  
						  
						  <section>
							<div>
							<button onclick="javascript:document.tableForm.reset()">Reset</button>
							<button onclick="javascript:document.tableForm.submit()">Set table</button>
							</div>
						</section>
						</fieldset>
				        </form>
				        <% }else
							{
							%>
							  <form id="edittable" name="tableFormUpdate" action="actions/Table.jsp" method="post">
   <fieldset>
   <label>Edit Table</label>
   <%  
   String action = request.getParameter("action");
        if(action == null)
        {
        	
        }
      else if(action.equals("add_success"))
		{
			%>
			<div class="alert success">Table Detail Updated Successfully...</div>
			<%
		} %>
		<input type="hidden" name="id" value="<%=request.getParameter("id") %>" >
   <section><label for="text_tooltip">Table Number</label>
   
							<div><input type="text" id="input" name="tableNumber" required="required" value="<%=request.getParameter("tableNumber") %>">
							</div>
						</section>
						<section><label for="textarea">Description</label>
						<div><textarea id="textarea" name="tableDescription" rows="2" required><%=request.getParameter("tableDescription") %></textarea></div>
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
						  
						  
						  <section>
							<div>
							<button onclick="javascript:document.tableFormUpdate.reset()">Reset</button>
							<button onclick="javascript:document.tableFormUpdate.submit()">Update table</button>
							</div>
						</section>
						</fieldset>
				        </form>
							
							
							<% } %>
   
   
  </div>
  
  <div class="g6"> <br>
  </div>
</section>
<jsp:include page="footer.jsp"></jsp:include>

