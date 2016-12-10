<%@page import="com.comsats.restauto.controller.FeedbackController"%>
<% 
FeedbackController controller = new FeedbackController();
controller.updateFeedback();
%>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="navigation.jsp"></jsp:include>

<section id="content">
  <div class="g12 nodrop">
    <h1>List FeedBack</h1>
  </div>
    
  
  <div class="g12">
  <div id="ListFeedback" style="overflow-y:scroll; height: 1000px;">
			<jsp:include page="actions/Feedback.jsp" >
			<jsp:param name="q" value="" />
	    	</jsp:include>
			</div>
  
  </div>
   
  <div class="g6"> <br>
  </div>
</section>
<jsp:include page="footer.jsp"></jsp:include>

