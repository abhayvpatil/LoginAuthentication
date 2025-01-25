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
<h1>register</h1>
<form action="RegistrationServlet" method="post">
<label for="username">username</label>
<input type="text" id="username" name="username" required><br>
<label for="email">email</label>
<input type="text" id="username" name="email" required><br>
<label for="password">password</label>
<input type="password" id="password" name="password" required><br>
<button type="submit">register</button>





</form>
<p><a href="Index.html">Back to Home</a></p>

   <% String error = request.getParameter("error");
           if (error != null && error.equals("1")) { %>
            <p style="color: red;">Registration failed. Please try again.</p>
        <% } %>

</div>
</body>
</html>