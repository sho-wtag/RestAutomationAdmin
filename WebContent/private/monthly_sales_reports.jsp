<%@page import="com.comsats.restauto.entity.Greeting"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.comsats.restauto.controller.GreetingController"%>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="navigation.jsp"></jsp:include>
<section id="content">
  <div class="g12 nodrop">
  </div>
    
 <div class="g12">
		<form name="monthlyReportForm" action="reports/downloadreport.jsp"  method="post">
			<fieldset>
				<label>Monthly Report </label>
				<section>
					<label for="date">Start Date</label>
					<div>
						<input id="SMonthlydate" name="StartDate" type="text" class="date"> <br>
						<span>You can define displayed format within the settings.
							yyyy-mm-dd will always be used on submit</span>
					</div>
				</section>
					<section>
					<label for="date">End Date</label>
					<div>
					<input name="reportName" value="monthly" type="hidden"/>
						<input id="EMonthlydate" name="EndDate" type="text" class="date"> <br>
						<span>You can define displayed format within the settings.
							yyyy-mm-dd will always be used on submit</span>
					</div>
				</section>
				<section>
					
					<div>
						<button onclick="javascript:document.monthlyReportForm.submit()">Submit</button>
					</div>
				</section>
			</fieldset>
			
		</form>
	</div>
  
  
  <div class="g6"> <br>
  </div>
</section>
<jsp:include page="footer.jsp"></jsp:include>

