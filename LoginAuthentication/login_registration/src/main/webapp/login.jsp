<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="LRStyle.css">
</head>
<body>
<div class="container">
<h1>login</h1>
<form action="LoginServlet" method="post">

<label for="username">username</label>
<input type="text" id="username" name="username" required><br>
<label for="password">password</label>
<input type="password" id="password" name="password" required><br>
<button type="submit">login</button>





</form>
<p><a href="Index.html">Back to Home</a></p>


<% String error=request.getParameter("error");
   if(error!=null&& error.equals("1"))
   {%>
	   <p style="color: red">Invalid username & password</p>
   <% }%>
  
   <% String rs = request.getParameter("registration");
            if (rs != null && rs.equals("success")) { %>
                <p style="color: green;">Your Registration is Successful. Please Login.</p>
        <% } %>

</div>

</body>
</html>