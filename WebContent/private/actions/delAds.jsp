<%@page import="com.comsats.restauto.entity.Ad"%>
<%@page import="com.comsats.restauto.controller.AdsController"%>
<% 
AdsController suggestAd = new AdsController();
int value = Integer.parseInt(request.getParameter("action"));

suggestAd.deleteAd(value);


	
%>
<jsp:include page="../suggestions/adsSuggestion.jsp" >
	        <jsp:param name="q" value="" />
	        
	</jsp:include>


