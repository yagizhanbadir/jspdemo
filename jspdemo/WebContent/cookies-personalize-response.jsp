<html>
<head>
<title>Confirmation</title>
</head>
<%
	//read form data
	String favLang = request.getParameter("favoriteLanguage");
	
	//create the cookie
	Cookie cookie = new Cookie("myApp.favoriteLanguage", favLang);
	
	//set the life span ... total number of seconds 
	
	cookie.setMaxAge(60*60*24*365);  //fpr one year
	
	//send cookie to browser
	response.addCookie(cookie);

%>
<body>
 Thanks! We set your favorite language to: ${param.favoriteLanguage}
 <br/><br/>
 
 <a href="cookies-homepage.jsp">Return to homepage</a>
 
</body>

</html>