<%@page import="com.comsats.restauto.entity.Unit"%>
<%@page import="com.comsats.restauto.controller.UnitController"%>
<%@page import="com.comsats.restauto.controller.DishController"%>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="navigation.jsp"></jsp:include>
<section id="content">
  <div class="g12 nodrop">
    <h1>Dishes Management<button onclick="window.location=href='add_dishes.jsp#adddish'" style="float: right" >Insert Dish</button></h1>
  </div>
  
  <div class="g12">
   <form>
   <fieldset>
   <label>Search Dishes</label>
   <section>
          <label for="input">Dish Name</label>
          <div>
            <input type="text" id="input" name="dish_name" onkeyup="showHint(this.value,'dishSuggest','suggestions/dishSuggestions.jsp')">
          </div>
          <div id="dishSuggest" style="overflow-y: scroll; height: 200px;">
			<jsp:include page="suggestions/dishSuggestions.jsp">
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
  	  if(id == null){
        %>
    <form id="adddish" name="dishForm" action="actions/Dish.jsp" method="post" enctype="multipart/form-data">
      <fieldset>
        <label>Add Dishes</label>
       
         <%

        String action = request.getParameter("action");
        if(action == null)
        {
        	
        }
      else if(action.equals("add_success"))
		{
			%>
			<div class="alert success">Dish added Successfully...</div>
			<%
		} %>
        
        <input type="hidden" name="catId" id="catId">
        <section>
          <label for="input">Dish Name</label>
          <div>
            <input type="text" id="input" name="dishName" required>
          </div>
        </section>
        
		<section>
          <label for="input">Category Name</label>
          <div>
            <input type="text" id="cat_name" name="cat_name" required onkeyup="showHint(this.value,'dish_suggest','suggestions/dishes_catSuggest.jsp')">
          </div>
        </section>
        		<section>
        		<div id="dish_suggest" style="overflow-y:scroll; height: 200px;">
			<jsp:include page="suggestions/dishes_catSuggest.jsp" >
        <jsp:param name="q" value="" />
        
        
    </jsp:include>
			</div>
        		</section>
		
			
			<section><label for="textarea">Description</label>
						<div><textarea id="textarea" name="dishDescription" rows="2"></textarea></div>
						</section>
						
			<section><label for="integer">Price</label>
							<div><input id="integer" name="dishPrice" type="number" class="integer" required>
							<br><span>Price will be in Pakistani rupees</span>
							</div>
						</section>
			<section><label for="integer">Calories/100 gram</label>
							<div><input id="integer" name="dishCalories" type="number" class="integer" value="0">
							</div>
						</section>
			<section><label for="integer">Discount</label>
							<div><input id="integer" name="dishDiscount" type="number" class="integer" value="0">
							<br><span>Discount will be in percentage</span>
							</div>
						</section>
			<section><label for="integer">Avg Cooking Time</label>
							<div><input id="integer" name="dishCookTime" type="number" class="integer" value="0">
							<br><span>Cooking time in minutes.</span>
							</div>
						</section>
		
        <section>
          <label for="file_upload">Image<br>
            <span>Category image will upload. size: 480px x 200px</span></label>
          <div>
            <input type="file" id="file_upload" name="dish_image">
          </div>
        </section>
        <section>
			<label>Hot</label>
							<div>
								<input type="radio" id="hot_radio" name="hot" value="Yes" ><label for="hot_radio">Yes</label>
								<input type="radio" id="hot_radio" name="hot" value="No" checked="checked" ><label for="hot_radio">No</label>
							</div>
			</section>
			<section>
								<label for="dropdownUnit">Select Unit</label>
								<div>					
								<select name="dropdownUnit" id="dropdownUnit">
								<option value="0" selected="selected">Select</option>
								<% 
								UnitController selectUnit = new UnitController();
								for(Unit var : selectUnit.suggestUnit(""))
								{
								%>
							
							
									<option value="<%=var.getUnitName() %>"><%=var.getUnitName() %></option>
<%} %>
									
								</select>
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
            <button onclick="javascript:document.dishForm.submit()" >Submit</button>
          </div>
        </section>
      </fieldset>
    </form>
    
    
	<%} 
	else{
		//DishController catName = new DishController();
		//int  = Integer.parseInt(request.getParameter("catName"));
		//catName.getCatName();
		
		%>
		
		<form id="editdish" name="dishFormUpdate" action="actions/Dish.jsp" method="post" enctype="multipart/form-data">
	      <fieldset>
	        <label>update Dish</label>
	       
	         <%
	          
	         
	        String action = request.getParameter("action");
	        if(action == null)
	        {
	        	
	        }
	      else if(action.equals("update_success"))
			{
				%>
				<div class="alert success">Dish updated Successfully...</div>
				<%
			} %>
	        
	        <input type="hidden" name="id" value="<%=request.getParameter("id") %>">
	        <input type="hidden" name="check" value="<%=request.getParameter("image") %>" >
	                <input type="hidden" name="catId" id="catId" value="<%=request.getParameter("catID") %>">
	        <section>
	          <label for="input">Dish Name</label>
	          <div>
	            <input type="text" id="input" name="dishName" value="<%=request.getParameter("dishName") %>" required>
	          </div>
	        </section>
	        
			<section>
	          <label for="input">Category Name</label>
	          <div>
	            <input type="text" id="cat_name" name="cat_name" required value="<%=request.getParameter("catName") %>" onkeyup="showHint(this.value,'dish_suggest','suggestions/dishes_catSuggest.jsp')">
	          </div>
	        </section>
	        		<section>
	        		<div id="dish_suggest" style="overflow-y:scroll; height: 200px;">
				<jsp:include page="suggestions/dishes_catSuggest.jsp" >
	        <jsp:param name="q" value="" />
	        
	        
	    </jsp:include>
				</div>
	        		</section>
			
				
				<section><label for="textarea">Description</label>
							<div><textarea id="textarea" name="dishDescription" rows="2">
							<%=request.getParameter("desc") %>
							
							</textarea></div>
							</section>
							
				<section><label for="integer">Price</label>
								<div><input id="integer" name="dishPrice" value="<%=request.getParameter("price") %>" type="number" class="integer" required>
								<br><span>Price will be in Pakistani rupees</span>
								</div>
							</section>
				<section><label for="integer">Calories/100 gram</label>
								<div><input id="integer" name="dishCalories" value="<%=request.getParameter("calories") %>" type="number" class="integer">
								</div>
							</section>
				<section><label for="integer">Discount</label>
								<div><input id="integer" name="dishDiscount" value="<%=request.getParameter("discount") %>" type="number" class="integer">
								<br><span>Discount will be in percentage</span>
								</div>
							</section>
				<section><label for="integer">Avg Cooking Time</label>
								<div><input id="integer" name="dishCookTime" value="<%=request.getParameter("cookTime") %>" type="number" class="integer">
								<br><span>Cooking time in minutes.</span>
								</div>
							</section>
			
	        <section>
	          <label for="file_upload">Image<br>
	            <span>Category image will upload. size: 480px x 200px</span></label>
	          <div>
	            <input type="file" id="file_upload" name="dish_image">
	            <div>
	            <img border="2" src=../uploads/dish/<%=request.getParameter("image") %> width="480"  height="200" />
	            </div>
	          </div>
	        </section>
	        <section>
			<label>Hot</label>
							<div>
							<% if(request.getParameter("hot").equals("Yes"))
        	  {
        	  %>
								<input type="radio" id="hot_radio" name="hot" value="Yes" checked="checked" ><label for="hot_radio">Yes</label>
								<input type="radio" id="hot_radio" name="hot" value="No" ><label for="hot_radio">No</label>
								<%}else
									{%>
								<input type="radio" id="hot_radio" name="hot" value="Yes" ><label for="hot_radio">Yes</label>
								<input type="radio" id="hot_radio" name="hot" value="No" checked="checked" ><label for="hot_radio">No</label>
								<%} %>
							</div>
			</section>
			<section>
								<label for="dropdownUnit">Select Unit</label>
								<div>					
								<select name="dropdownUnit" id="dropdownUnit">
								<option value="0" selected="selected">Select</option>
								<% 
								UnitController selectUnit = new UnitController();
								for(Unit var : selectUnit.suggestUnit(""))
								{
									if(request.getParameter("unit").equals(var.getUnitName()))
									{
								%>
							
							
									<option value="<%=var.getUnitName() %>" selected="selected"><%=var.getUnitName() %></option>
<%}else{
%>
<option value="<%=var.getUnitName() %>"><%=var.getUnitName() %></option>
<%
									}} %>
									
								</select>
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
	            <button onclick="javascript:document.dishFormUpdate.submit()" >Update</button>
	          </div>
	        </section>
	      </fieldset>
	    </form>
		
		
<%	}%>    	
  </div>
  
  <div class="g6"> <br>
  </div>
</section>
<jsp:include page="footer.jsp"></jsp:include>
