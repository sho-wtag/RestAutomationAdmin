<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="navigation.jsp"></jsp:include>
<section id="content">
  <div class="g12 nodrop">
    <h1>Category Management<button onclick="window.location=href='add_category.jsp#addcategory'" style="float: right" >Insert Category</button></h1>
  </div>
   <div class="g12">
   <form>
   <fieldset>
   <label>Search Category</label>
  
   <section>
          <label for="input">Category Name</label>
          <div>
            <input type="text" id="input" name="cat_name" onkeyup="showHint(this.value,'suggest','suggestions/catSuggestions.jsp')">
          </div>
          <div id="suggest" style="overflow-y: scroll; height: 200px;">
			<jsp:include page="suggestions/catSuggestions.jsp">
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
  
    <form id="addcategory" name="catForm" action="actions/Category.jsp" method="post" enctype="multipart/form-data">
      <fieldset>
        <label>Add Category</label>
      <%  String action = request.getParameter("action");
        if(action == null)
        {
        	
        }
      else if(action.equals("add_success"))
		{
			%>
			<div class="alert success">Category added Successfully...</div>
			<%
		} %>
        <section>
          <label for="input">Category Name</label>
          <div>
            <input type="text" id="input" name="catName" required>
          </div>
        </section>
        <section>
          <label for="file_upload">Image<br>
            <span>Category image will upload. size: 480px x 200px</span></label>
          <div>
            <input type="file" id="file_upload" name="catImage">
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
         	<button onclick="javascript:document.catForm.reset()">Reset</button>
            <button onclick="javascript:document.catForm.submit()">Submit</button>
          </div>
        </section>
      </fieldset>
    </form>
    <% 
    }
  else
  {
	%>
	  
    <form  id="editcategory" name="catFormUpdate" action="actions/Category.jsp" method="post" enctype="multipart/form-data">
      <fieldset>
        <label>Edit Category</label>
        <%  String action = request.getParameter("action");
        if(action == null)
        {
        	
        }
      else if(action.equals("update_success"))
		{
			%>
			<div class="alert success">Category updated Successfully...</div>
			<%
		} %>
    <input type="hidden" name="id" value="<%=request.getParameter("id") %>" >
    <input type="hidden" name="check" value="<%=request.getParameter("image") %>" >
        <section>
          <label for="input">Category Name</label>
          <div>
            <input type="text" id="input" name="catName" value="<%=request.getParameter("catName") %>" required>
          </div>
        </section>
        <section>
          <label for="file_upload">Image<br>
            <span>Category image will upload. size: 480px x 200px</span></label>
          <div>
            <input type="file" id="file_upload" name="catImage" />
            <div><img border="2" src=../uploads/category/<%=request.getParameter("image") %> width="480"  height="300" /></div>
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
         	<button onclick="javascript:document.catFormUpdate.reset()">Reset</button>
            <button onclick="javascript:document.catFormUpdate.submit()">Update</button>
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

