<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="navigation.jsp"></jsp:include>
<section id="content">
  <div class="g12 nodrop">
    
  </div>
  <div class="g12">
  <form>
   <fieldset>
   <label>Call Waiter</label>
  <div id="newCalls" style="overflow-y:scroll; height: 600px;">
			<jsp:include page="suggestions/getNewCalls.jsp" >
        <jsp:param name="q" value="new" />
        
        
    </jsp:include>
			</div>
     </fieldset>
        </form>
       
  </div>
  <div class="g6"> <br>
  
  </div>
</section>
<jsp:include page="footer.jsp"></jsp:include>

