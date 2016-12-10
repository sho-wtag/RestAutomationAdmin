<%@page import="com.comsats.restauto.entity.Category"%>
<%@page import="com.comsats.restauto.controller.DishController"%>
<%DishController suggestCat = new DishController(); %>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="navigation.jsp"></jsp:include>
<section id="content">
  <div class="g12 nodrop">
    <h1>Ingredient Management<button onclick="window.location=href='add_ingredient.jsp#addingredients'" style="float: right" >Insert Ingredient</button></h1>
  </div>
   
  <div class="g12">
   <form>
   <fieldset>
   <label>Search Ingredient </label>
  <section>
								<label for="dropdownCategoryEdit">Select Category</label>
								<div>					
								<select name="dropdownCategoryEdit" id="dropdownCategoryEdit" onchange="showHint(this.value,'selectDishes','suggestions/listDishesIngredient.jsp')">
								<option value="0" selected="selected">Select</option>
								<% 
								for(Category var : suggestCat.suggestCategory(""))
								{
								%>
							
							
									<option value="<%=var.getCatId() %>"><%=var.getCatName() %></option>
<%} %>
									
								</select>
							</div>
						</section>
		
		
		
        <section>
          <label for="input">Select Dish</label>
          <div id="selectDishes">
            <select name="dishID" id="dishID" onchange="showHint(this.value,'suggestIngredient','suggestions/ingredientSuggestions.jsp')">
            <option value="0">Select</option> 
            </select>
          </div>
          <div id="suggestIngredient" style="overflow-y: scroll; height: 200px;">
			<jsp:include page="suggestions/ingredientSuggestions.jsp">
				<jsp:param name="q" value="0" />
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
    <form id="addingredients" name="addIngredient" action="actions/Ingredient.jsp" method="post">
      <fieldset>
        <label>Add Ingredient</label>
		<%  
   String action = request.getParameter("action");
        if(action == null)
        {
        	
        }
      else if(action.equals("add_success"))
		{
			%>
			<div class="alert success">Ingredient added Successfully...</div>
			<%
		} %>
								<section>
								<label for="dropdownCategory">Select Category</label>
								<div>					
								<select name="dropdownCategory" id="dropdownCategory" onchange="showHint(this.value,'listDishes','suggestions/listDishes.jsp')">
								<option value="0" selected="selected">Select</option>
								<% 
								for(Category var : suggestCat.suggestCategory(""))
								{
								%>
							
							
									<option value="<%=var.getCatId() %>"><%=var.getCatName() %></option>
<%} %>
									
								</select>
							</div>
						</section>
		
		
		
        <section>
          <label for="input">Select Dish</label>
          <div id="listDishes">
            <select name="dishID" contenteditable="true">
            <option value="0">Select</option> 
            </select>
          </div>
        </section>
		
				
        <section>
          <label for="input">Ingredient Name</label>
          <div>
            <input type="text" id="input" name="ingredientName" required>
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
            <button onclick="javascript:document.addIngredient.submit()">Submit</button>
          </div>
        </section>
      </fieldset>
    </form>
    <%
    }else
    {  
  %>
     <form id="editingredients" name="updateIngredient" action="actions/Ingredient.jsp" method="post">
      <fieldset>
        <label>Edit Ingredient</label>
		<%  
   String action = request.getParameter("action");
        if(action == null)
        {
        	
        }
      else if(action.equals("add_success"))
		{
			%>
			<div class="alert success">Ingredient Updated Successfully...</div>
			<%
		} %>
		<input type="hidden" name="id" value="<%=request.getParameter("id") %>" >
								<section>
								<label for="dropdownCategory">Select Category</label>
								<div>					
								<select name="dropdownCategory" id="dropdownCategory" onchange="showHint(this.value,'listDishes','suggestions/listDishes.jsp')">
								<option value="0" selected="selected">Select</option>
								<% 
								for(Category var : suggestCat.suggestCategory(""))
								{
								%>
							
							
									<option value="<%=var.getCatId() %>"><%=var.getCatName() %></option>
<%} %>
									
								</select>
							</div>
						</section>
		
		
		
        <section>
          <label for="input">Select Dish</label>
          <div id="listDishes">
            <select name="dishID" contenteditable="true">
            <option value="0">Select</option> 
            </select>
          </div>
        </section>
		
				
        <section>
          <label for="input">Ingredient Name</label>
          <div>
            <input type="text" id="input" name="ingredientName" value="<%=request.getParameter("name") %>" required>
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
            <button onclick="javascript:document.updateIngredient.submit()">Update</button>
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
