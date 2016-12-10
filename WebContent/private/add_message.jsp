<%@page import="com.comsats.restauto.entity.Greeting"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.comsats.restauto.controller.GreetingController"%>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="navigation.jsp"></jsp:include>
<section id="content">
  <div class="g12 nodrop">
    <h1>Greetings Management <button onclick="window.location=href='add_message.jsp#addmessage'" style="float: right" >Insert Greeting Message</button></h1>
  </div>
   <div class="g12">
		<form>
			<fieldset>
				<label>Search Message </label>
				<section>
					<label for="date">Greeting Date</label>
					<div>
						<input id="date1" name="date1" type="text" class="date" onchange="showHint(this.value,'suggestGreeting','suggestions/greetingSuggestions.jsp')"> <br>
						<span>You can define displayed format within the settings.
							yyyy-mm-dd will always be used on submit</span>
					</div>
				</section>
				<div style="display: none;">
					<section>
						<label for="input">title</label>
						<div>
							<input type="text" id="input" name="title">
						</div>
					</section>
				</div>
				
			</fieldset>
			<div id="suggestGreeting" style="overflow-y:scroll; height: 200px;">
			<jsp:include page="suggestions/greetingSuggestions.jsp" />
       
			</div>
		</form>
	</div>
  
  <div class="g12">
  <%
  String id=request.getParameter("id");
  if(id == null)
  {
  %>
    <form id="addmessage" action="actions/Greeting.jsp" method="post" name="greetingForm" method="post" enctype="multipart/form-data">
    <input  type="hidden" name="event" value="add"  />
      <fieldset>
        <label>New Message</label>
          <%  
          String action = request.getParameter("action");
        if(action == null)
        {
        	
        }
      else if(action.equals("add_success"))
		{
			%>
			<div class="alert success">Greeting message added Successfully...</div>
			<%
		} %>
        <section>
          <label for="input">Title</label>
          <div>
            <input type="text" id="input" name="greetingTitle" required>
          </div>
        </section>
		
		 <section>
          <label for="input">Description</label>
          <div><textarea id="textarea" name="greetingDescription" rows="4" required></textarea></div>
        </section>
		
        <section>
          <label for="file_upload">Banner<br>
            <span>Greeting image will upload. size: 50px x 50px</span></label>
          <div>
            <input type="file" id="file_upload" name="greeting_image">
          </div>
        </section>
								<section><label for="date">Date</label>
							<div><input id="date" name="greetingDate" type="text" class="date" required="required">
							<br><span>You can define displayed format within the settings. yyyy-mm-dd will always be used on submit</span>
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
            <button onclick="javascript:document.greetingForm.submit()">Submit</button>
          </div>
        </section>
      </fieldset>
    </form>
    <%}else
    {
    String action = request.getParameter("action");
    GreetingController gc=new GreetingController();
    
    
    ArrayList<Greeting> recordList=gc.getAllGreetingsList(id,null);
    recordList.get(0);
    
    Greeting greeting=recordList.get(0);
    	%>
    	<div class="g12">
    <form id="editmessage" action="actions/Greeting.jsp" method="post" enctype="multipart/form-data" name="greetingForm">
    <input  type="hidden" name="id" value="<%=id %>"  /> 
    <input  type="hidden" name="event" value="update"  /> 
    <input type="hidden" name="check" value="<%=greeting.getBanner() %>" >
      <fieldset>
        <label>Update Message</label>
          <%  
         
          
          
        if(action == null)
        {
        	
        }
      else if(action.equals("add_success"))
		{
			%>
			<div class="alert success">Greeting message updated Successfully...</div>
			<%
		} %>
        <section>
          <label for="input">Title</label>
          <div>
          
            <input type="text" value="<%=greeting.getGreetingTitle() %>" id="input" name="greetingTitle" required>
          </div>
        </section>
		
		 <section>
          <label for="input">Description</label>
          <div><textarea id="textarea"  name="greetingDescription"  rows="4"  required><%= greeting.getGreetingDescription() %></textarea></div>
        </section>
		
        <section>
          <label for="file_upload">Banner<br>
            <span>Greeting image will upload. size: 50px x 50px</span></label>
          <div>
            <input type="file" id="file_upload" name="greeting_image">
            <div><img border="2" src=../uploads/greeting/<%=greeting.getBanner() %> width="137"  height="140" /></div>
          </div>
        </section>
								<section><label for="date">Date</label>
							<div><input id="date" name="greetingDate" value="<%=greeting.getGreetingDate() %>" type="text" class="date" required="required">
							<br><span>You can define displayed format within the settings. yyyy-mm-dd will always be used on submit</span>
							</div>
						</section>
        <section>
          <label>Status</label>
          <div>
            <% if(greeting.getStatus().equals("enabled"))
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
            <button onclick="javascript:document.greetingForm.submit()">Update</button>
          </div>
        </section>
      </fieldset>
    </form>
  </div>
    	<%
    }
	  
  
  %>
  </div>
  
  
  <div class="g6"> <br>
  </div>
</section>
<jsp:include page="footer.jsp"></jsp:include>

