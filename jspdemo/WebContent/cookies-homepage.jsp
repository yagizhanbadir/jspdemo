<html>
<body>
	<h3>Training Portal</h3>

	<%
		//the default ... if there are no cookies
		String favLang = "Java";

		//get the cookies from the browser request
		Cookie[] cookie = request.getCookies();

		//find our favorite language cookie 
		if (cookie != null) {
			for (Cookie tempCookie : cookie) {
				if ("myApp.favoriteLanguage".equals(tempCookie.getName())) {
					favLang = tempCookie.getValue();
					break;
				}
			}
		}
	%>

	<h4>
		New books for <%=favLang%></h4>
	<ul>
		<li>...</li>
		<li>...</li>
		<li>...</li>
		<li>...</li>
	</ul>
	<h4>Latest News Reports for <%=favLang %></h4>
	<ul>
		<li>...</li>
		<li>...</li>
		<li>...</li>
		<li>...</li>
	</ul>
	
		<h4>Hot Jobs for <%=favLang %></h4>
	<ul>
		<li>...</li>
		<li>...</li>
		<li>...</li>
		<li>...</li>
	</ul>
<hr>
<a href="cookies-personalize-form.html">Personalize this page</a>

</body>
</html>