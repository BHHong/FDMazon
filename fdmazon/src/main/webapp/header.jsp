<img style="max-width: 200px; height: auto;"
	src="/fdmazon/images/logo.png" />
<nav>
	<ul>
		<li><a href="/fdmazon/index.jsp">Home</a></li>
		<li class="dropdown"><a class="dropbtn">Category</a>
			<div class="dropdown-content">
				<a href="/fdmazon/searchCatC?cat=Phone">Phone</a> 
				<a href="/fdmazon/searchCatC?cat=Tablet">Tablet</a>
			</div></li>
		<li class="dropdown"><a class="dropbtn">Brand</a>
			<div class="dropdown-content">
				<a href="/fdmazon/searchBrandC?brand=Apple">Apple</a>
				<a href="/fdmazon/searchBrandC?brand=Asus">Asus</a>
				<a href="/fdmazon/searchBrandC?brand=Lenovo">Lenovo</a> 
				<a href="/fdmazon/searchBrandC?brand=Samsung">Samsung</a>
			</div></li>
<!-- 		<li class="searchbar"> -->
<!-- 			<form action="/fdmazon/searchBarC?cat="+cat+"&q"+q method="get"> -->
<!-- 				<select name="cat"> -->
<!-- 					<option value="All">All</option> -->
<!-- 					<option value="Phone">Phones</option> -->
<!-- 					<option value="Tablet">Tablets</option> -->
<!-- 				</select> <input name="q" size="15" type="search" id="search" placeholder="Search..." required></input> -->
<!-- 			</form> -->
<!-- 		</li> -->
		<% if (session.getAttribute("sessionId")==null || !session.getAttribute("sessionId").equals(session.getAttribute("admin"))){
		 		out.print("<li class=\"floatright\"><a href=\"/fdmazon/basket.jsp\">Cart</a></li>"); }%>
		<li class="dropdown" id="account">
		<%
			if (session.getAttribute("sessionId") == null) {
				out.print("<a class=\"dropbtn\">Sign in / Register</a>");
				out.print("<div class=\"dropdown-content\">");
				out.print("<a href=\"/fdmazon/signin.jsp\">Sign In</a>");
				out.print("<a href=\"/fdmazon/registration.jsp\">Register</a>");
				out.print("</div></li>");
			} else if (session.getAttribute("sessionId").equals(session.getAttribute("admin"))){
				out.print("<a class=\"dropbtn\">Administrative Tools</a>");
				out.print("<div class=\"dropdown-content\">");
				out.print("<a href=\"/fdmazon/editproducts.jsp\">Add/Remove Products</a>");
				out.print("<a href=\"/fdmazon/signoutC\">Sign Out</a>");
				out.print("</div></li>");
			} else {
				out.print("<a class=\"dropbtn\">"+session.getAttribute("uFirstName")+"'s Account</a>");
				out.print("<div class=\"dropdown-content\">");
				out.print("<a href=\"/fdmazon/accountDetailsC?stage=a\">Personal Details</a>");
				out.print("<a href=\"/fdmazon/addfund.jsp\">Top up account</a>");
				out.print("<a href=\"/fdmazon/orderHistoryC\">Order History</a>");
				out.print("<a href=\"/fdmazon/signoutC\">Sign Out</a>");
				out.print("</div></li>");
			}
		%>
	</ul>
</nav>
