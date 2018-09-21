<html>
<head>
<title>Student Confirmation Title</title>
</head>
<body>
	The student is confirmed : ${param.firstName } ${ param.lastName }
	<br />
	<br />

	Favorite Programming Languages:  <br/>
	<ul>
		<%
			String[] languages = request.getParameterValues("favoriteLanguage");
			
			for(String templang: languages){
				out.println("<li>" + templang + "</li>");
			}
		
		%>
	</ul>

</body>
</html>