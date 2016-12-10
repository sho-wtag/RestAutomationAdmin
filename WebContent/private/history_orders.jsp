<%
String sDate = request.getParameter("startDate");
String eDate = request.getParameter("endDate");

if(sDate == null || eDate == null || sDate.equals("") || eDate.equals(""))
{
	sDate = "";
	eDate = "";
}

%>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="navigation.jsp"></jsp:include>
<section id="content">
  
  <div class="g12">
   <form name="historyOrder" action="history_orders.jsp" method="post">
   <fieldset>
   <label>Orders History</label>
   <section>
          <label for="input">Start Date</label>
          <div>
            <input id="StartDate" name="startDate" type="text" class="date">
          </div>
    
        </section>
         <section>
          <label for="input">End Date</label>
          <div>
            <input id="EndDate" name="endDate" type="text" class="date">
          </div>
        </section>
         <section>
          <div>
         	<button onclick="javascript:document.historyOrder.reset()">Reset</button>
            <button onclick="javascript:document.historyOrder.submit()">Submit</button>
          </div>
        </section>
        </fieldset>
        </form>
   <h3>Orders List</h3>
			
			<div id="historyOrders" style="overflow-y:scroll; height: 600px;">
			<jsp:include page="suggestions/getHistoryOrders.jsp" >
			<jsp:param name="startDate" value="<%=sDate %>" />
			<jsp:param name="endDate" value="<%=eDate %>" />
        
    </jsp:include>
			</div>
   
  </div>
  <div class="g6"> <br>
  </div>
</section>
<jsp:include page="footer.jsp"></jsp:include>

