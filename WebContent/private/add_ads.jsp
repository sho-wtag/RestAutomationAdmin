<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="navigation.jsp"></jsp:include>



<section id="content">
  <div class="g12 nodrop">
    <h2>Ads Management <button onclick="window.location=href='add_ads.jsp#add'" style="float: right" >Insert Ad</button></h2>
  </div>
		<div class="g12">				  
   <form>
   <fieldset>
   <label>Edit Ads</label>
  
   <section>
          <label for="input">Ad Name</label>
          <div>
            <input type="text" id="input" name="adName" onkeyup="showHint(this.value,'adSuggest','suggestions/adsSuggestion.jsp')">
          </div>
          <div id="adSuggest" style="overflow-y: scroll; height: 200px;">
					<jsp:include page="suggestions/adsSuggestion.jsp">
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
    <form id="add" name="addForm" action="actions/Ads.jsp" method="post" enctype="multipart/form-data">
      <fieldset>
        <label>New Ads</label>
        <%  String action = request.getParameter("action");
        if(action == null)
        {
        	
        }
      else if(action.equals("add_success"))
		{
			%>
			<div class="alert success">Ad added Successfully...</div>
			<%
		} %>
        
        <section>
          <label for="input">Ad Name</label>
          <div>
            <input type="text" id="input" name="ad_name" required>
          </div>
        </section>
		
		 <section>
          <label for="input">Description</label>
          <div><textarea id="textarea" name="description" rows="4"></textarea></div>
        </section>
		
        <section>
          <label for="file_upload">Banner<br>
            <span>Deal image will upload. size: 50px x 50px</span></label>
          <div>
            <input type="file" id="file_upload" name="ad_image">
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
            <button onclick="javascript:document.addForm.submit()">Submit</button>
          </div>
        </section>
      </fieldset>
    </form>
    
     <%
    }
  else
  {
	%>
	
	<form id="edit" name="editForm" action="actions/Ads.jsp" method="post" enctype="multipart/form-data">
      <fieldset>
        <label>Edit Ads</label>
        <%  String action = request.getParameter("action");
        if(action == null)
        {
        	
        }
      else if(action.equals("update_success"))
		{
			%>
			<div class="alert success">Ads Edit Successfully...</div>
			<%
		} %>
        
        <input type="hidden" name="id" value="<%=request.getParameter("id") %>" >
    <input type="hidden" name="check" value="<%=request.getParameter("image") %>" >
    
        <section>
          <label for="input">Ad Name</label>
          <div>
            <input type="text" id="input" name="ad_name" value="<%=request.getParameter("adName") %>" required>
          </div>
        </section>
		
		 <section>
          <label for="input">Description</label>
          <div><textarea id="textarea" name="description" rows="4">
          <%=request.getParameter("desc") %>
          </textarea></div>
        </section>
		
        <section>
          <label for="file_upload">Banner<br>
            <span>Deal image will upload. size: 50px x 50px</span></label>
          <div>
            <input type="file" id="file_upload" name="ad_image" />
            
            <div><img border="2" src=../uploads/ads/<%=request.getParameter("image") %> width="480"  height="300" /></div>
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
            <button onclick="javascript:document.editForm.submit()">update</button>
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

