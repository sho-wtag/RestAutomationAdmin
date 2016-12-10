<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="navigation.jsp"></jsp:include>
<section id="content">
  <div class="g12 nodrop">
    <h1>User Management</h1>
  </div>
  <div class="g12">
   <form>
   <fieldset>
   <label>Search User</label>
  
   <section>
          <label for="input">User Name</label>
          <div>
            <input type="text" id="input" name="user_name" onkeyup="showHint(this.value,'userSuggest','suggestions/userSuggestions.jsp')">
          </div>
          <div id="userSuggest" style="overflow-y: scroll; height: 200px;">
			<jsp:include page="suggestions/userSuggestions.jsp">
				<jsp:param name="q" value="" />


			</jsp:include>
		</div>
        </section>
        </fieldset>
        </form>
	</div>
  <div class="g6"> <br>
  </div>
</section>
<jsp:include page="footer.jsp"></jsp:include>

