<%@page import="com.comsats.restauto.controller.TaxController"%>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="navigation.jsp"></jsp:include>
<section id="content">
  <div class="g12 nodrop">
    <h1>Tax Settings</h1>
  </div>
  <div class="g12">
   <form name="taxForm" action="actions/Tax.jsp" method="post">
   <fieldset>
   <label>Tax</label>
    <%  
		TaxController taxController = new TaxController();
    	String taxRate = taxController.checkTax();
    	String action = request.getParameter("action");
    	
    	if(taxRate == null || taxRate == "")
    	{
    		
    		%>
    	<section><label for="text_tooltip">Tax Percentage</label>
							<div><input type="text" id="text_placeholder" name="taxRate" placeholder="Enter Tax Rate">
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
						  <section>
							<div><button onclick="javascript:document.taxForm.submit()">Set Tax</button>
							</div>
						</section>			
	
        		
    		<%
    	}
    	else
    	{
    		if(action == null)
            {
    			
            }
    		else if(action.equals("add_success"))
    		{
    			%>
    			<div class="alert success">Tax Updated Successfully...</div>
    			
    			<%
    		}
    		
    		%>
    		<section><label for="text_tooltip">Tax Percentage</label>
							<div><input type="text" id="text_placeholder" name="taxRate" placeholder="<%=taxRate %>" value="<%=taxRate %>">
							<input type="hidden" id="taxhide" name="id" value="<%=taxRate %>">
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
						  <section>
							<div><button onclick="javascript:document.taxForm.submit()">Update Tax</button>
							</div>
						</section>			
	
    
    		<%
    	}    
        %>
        						</fieldset>
        </form>
   
   
  </div>
  <div class="g6"> <br>
  </div>
</section>
<jsp:include page="footer.jsp"></jsp:include>

