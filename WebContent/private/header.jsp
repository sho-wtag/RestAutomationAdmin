<!doctype html>
<html lang="en-us">
<head>
	<meta charset="utf-8">
	
	<title>Restaurant Automation - Admin Panel</title>
	
	<meta name="description" content="">
	<meta name="author" content="revaxarts.com">
	
	<!-- Google Font and style definitions -->
	<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=PT+Sans:regular,bold">
	<link rel="stylesheet" href="../css/style.css">
	<link rel="stylesheet" href="../css/template.css">
	
	
	<!-- star rater for feedback -->
	<link rel="stylesheet" href="../css/simple_css_rater.css">
	
	<!-- notify bar for feedback -->
	<link rel="stylesheet" href="../css/jquery.notifyBar.css" type="text/css" media="screen"  />

	
	<!-- include the skins (change to dark if you like) -->
	<link rel="stylesheet" href="../css/light/theme.css" id="themestyle">
	<!-- <link rel="stylesheet" href="css/dark/theme.css" id="themestyle"> -->
	
	<!--[if lt IE 9]>
	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<link rel="stylesheet" href="css/ie.css">
	<![endif]-->
	
	<!-- Apple iOS and Android stuff -->
	<meta name="apple-mobile-web-app-capable" content="no">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<link rel="apple-touch-icon-precomposed" href="apple-touch-icon-precomposed.png">
	
	<!-- Apple iOS and Android stuff - don't remove! -->
	<meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=no,maximum-scale=1">
	
	<!-- Use Google CDN for jQuery and jQuery UI -->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.12/jquery-ui.min.js"></script>
	
	<!-- Loading JS Files this way is not recommended! Merge them but keep their order -->
	
	<!-- some basic functions -->
	<script src="../js/functions.js"></script>
		
	<!-- all Third Party Plugins and Whitelabel Plugins -->
	<script src="../js/plugins.js"></script>
	<script src="../js/editor.js"></script>
	<script src="../js/calendar.js"></script>
	<script src="../js/flot.js"></script>
	<script src="../js/elfinder.js"></script>
	<script src="../js/datatables.js"></script>
	<script src="../js/wl_Alert.js"></script>
	<script src="../js/wl_Autocomplete.js"></script>
	<script src="../js/wl_Breadcrumb.js"></script>
	<script src="../js/wl_Calendar.js"></script>
	<script src="../js/wl_Chart.js"></script>
	<script src="../js/wl_Color.js"></script>
	<script src="../js/wl_Date.js"></script>
	<script src="../js/wl_Editor.js"></script>
	<script src="../js/wl_File.js"></script>
	<script src="../js/wl_Dialog.js"></script>
	<script src="../js/wl_Fileexplorer.js"></script>
	<script src="../js/wl_Form.js"></script>
	<script src="../js/wl_Gallery.js"></script>
	<script src="../js/wl_Multiselect.js"></script>
	<script src="../js/wl_Number.js"></script>
	<script src="../js/wl_Password.js"></script>
	<script src="../js/wl_Slider.js"></script>
	<script src="../js/wl_Store.js"></script>
	<script src="../js/wl_Time.js"></script>
	<script src="../js/wl_Valid.js"></script>
	<script src="../js/wl_Widget.js"></script>
		<script src="../js/maskedinput.js"></script>
		<script src="../js/notifybar.js"></script>	
		
	<script>
	var varFeedback=setInterval(function(){countFeedback()},5000);
	var varNotifyFeedback=setInterval(function(){notifyFeedback()},5000);
	var vargetNewOders=setInterval(function(){getNewOrders()},5000);
	var varReloadNewOrders=setInterval(function(){reloadNewOrders()},5000);
	var vargetNewCalls=setInterval(function(){getNewCalls()},5000);
	var varcountNewCalls=setInterval(function(){countNewCalls()},5000);
	

	
	function deleteRecord(id,file,refreshId)
	{
		var xmlhttp;
		if (window.XMLHttpRequest)
		  {// code for IE7+, Firefox, Chrome, Opera, Safari
		  xmlhttp=new XMLHttpRequest();
		  }
		else
		  {// code for IE6, IE5
		  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		  }
		xmlhttp.onreadystatechange=function()
		  {
		  if (xmlhttp.readyState==4 && xmlhttp.status==200)
		    {
		    document.getElementById(refreshId).innerHTML=xmlhttp.responseText;
		    }
		  }
		

		xmlhttp.open("GET",file+"?action="+id,true);
		xmlhttp.send();
		
	}
	
	function selectName(value,id,catId,catField)
	{
		document.getElementById(id).value = value;
		document.getElementById(catField).value = catId;
		
	}
	
	
	function showHint(str,id,file)
{
		
var xmlhttp;
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    document.getElementById(id).innerHTML=xmlhttp.responseText;
    }
  }


xmlhttp.open("GET",file+"?q="+str,true);
xmlhttp.send();
}

	
	function countFeedback()
	{
		var xmlhttp;
		if (window.XMLHttpRequest)
		  {// code for IE7+, Firefox, Chrome, Opera, Safari
		  xmlhttp=new XMLHttpRequest();
		  }
		else
		  {// code for IE6, IE5
		  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		  }
		xmlhttp.onreadystatechange=function()
		  {
		  if (xmlhttp.readyState==4 && xmlhttp.status==200)
		    {
		    document.getElementById("feedbackCount").innerHTML=xmlhttp.responseText;
		    }
		  }
		

		xmlhttp.open("GET","actions/FeedbackCount.jsp",true);
		xmlhttp.send();
		
	}

	function notifyFeedback()
	{
		var xmlhttp;
		if (window.XMLHttpRequest)
		  {// code for IE7+, Firefox, Chrome, Opera, Safari
		  xmlhttp=new XMLHttpRequest();
		  }
		else
		  {// code for IE6, IE5
		  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		  }
		xmlhttp.onreadystatechange=function()
		  {
		  if (xmlhttp.readyState==4 && xmlhttp.status==200)
		    {
		    document.getElementById("box").innerHTML=xmlhttp.responseText;
		    }
		  }
		

		xmlhttp.open("GET","actions/FeedbackNotification.jsp",true);
		xmlhttp.send();
		
	}
	
	function getNewOrders()
	{
		var xmlhttp;
		if (window.XMLHttpRequest)
		  {// code for IE7+, Firefox, Chrome, Opera, Safari
		  xmlhttp=new XMLHttpRequest();
		  }
		else
		  {// code for IE6, IE5
		  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		  }
		xmlhttp.onreadystatechange=function()
		  {
		  if (xmlhttp.readyState==4 && xmlhttp.status==200)
		    {
		    document.getElementById("newOrderCount").innerHTML=xmlhttp.responseText;
		    }
		  }
		

		xmlhttp.open("GET","actions/getNewOrders.jsp",true);
		xmlhttp.send();
		
	}
	
	function reloadNewOrders()
	{
		var xmlhttp;
		if (window.XMLHttpRequest)
		  {// code for IE7+, Firefox, Chrome, Opera, Safari
		  xmlhttp=new XMLHttpRequest();
		  }
		else
		  {// code for IE6, IE5
		  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		  }
		xmlhttp.onreadystatechange=function()
		  {
		  if (xmlhttp.readyState==4 && xmlhttp.status==200)
		    {
		    document.getElementById("newOrders").innerHTML=xmlhttp.responseText;
		    }
		  }
		

		xmlhttp.open("GET","suggestions/getNewOrders.jsp?q=new",true);
		xmlhttp.send();
		
	}
	
	function getNewCalls()
	{
		var xmlhttp;
		if (window.XMLHttpRequest)
		  {// code for IE7+, Firefox, Chrome, Opera, Safari
		  xmlhttp=new XMLHttpRequest();
		  }
		else
		  {// code for IE6, IE5
		  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		  }
		xmlhttp.onreadystatechange=function()
		  {
		  if (xmlhttp.readyState==4 && xmlhttp.status==200)
		    {
		    document.getElementById("newCalls").innerHTML=xmlhttp.responseText;
		    }
		  }
		

		xmlhttp.open("GET","suggestions/getNewCalls.jsp?q=new",true);
		xmlhttp.send();
		
	}
	
	function countNewCalls()
	{
		var xmlhttp;
		if (window.XMLHttpRequest)
		  {// code for IE7+, Firefox, Chrome, Opera, Safari
		  xmlhttp=new XMLHttpRequest();
		  }
		else
		  {// code for IE6, IE5
		  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		  }
		xmlhttp.onreadystatechange=function()
		  {
		  if (xmlhttp.readyState==4 && xmlhttp.status==200)
		    {
		    document.getElementById("callWaiterCount").innerHTML=xmlhttp.responseText;
		    }
		  }
		

		xmlhttp.open("GET","actions/countNewCalls.jsp",true);
		xmlhttp.send();
		
	}
	
</script>
	
	<!-- configuration to overwrite settings -->
	<script src="../js/config.js"></script>
		
	<!-- the script which handles all the access to plugins etc... -->
	<script src="../js/script.js"></script>
	
	
</head>
<body>
<div id="box"></div>

<% 
String role = (String)session.getAttribute("sessionUserRole");
String displayName = (String)session.getAttribute("sessionUserName");
%>
				<div id="pageoptions">
			<ul>
				<li><a href="logout.jsp">Logout</a></li>
				<li>Welcome <%=displayName %><a href="profile.jsp">Profile</a></li>
				
			</ul>
			
		</div>

			<header>
		<div id="logo">
			<a href="dashboard.php">Logo Here</a>
		</div>
		<%
if(role != null)
{
	if(role.equals("admin")){
%>
		<div id="header">
			<ul id="headernav">
				<li><ul>
					<li><a href="new_orders.jsp">orders</a><b id="newOrderCount"></b></li>
					<li><a href="feedback.jsp">Feedback</a><b id="feedbackCount"></b></li>
					<li><a href="call_waiter.jsp">Call waiter</a><b id="callWaiterCount"></b></li>
					
					<li><a href="#">User Management</a>
						<ul>
							<li><a href="user_reg.jsp">Register</a></li>
							<li><a href="user_Mgt.jsp">Edit User</a></li>
						</ul>
					</li>
					<li><a href="#">Reports</a>
						<ul>
							<li><a href="daily_sales_reports.jsp">Daily Sales</a></li>
							<li><a href="monthly_sales_reports.jsp">Monthly Sales</a></li>
							<li><a href="most_sold_reports.jsp">Most Sold</a></li>
							<li><a href="profit_reports.jsp">Most Profitable</a></li>
						</ul>
					</li>
					
					
				</ul></li>
			</ul>
			
		</div>
		<% }} %>
	</header>
