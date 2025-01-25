<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="jakarta.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="Style.css">
</head>
<body>

   <%
        // Retrieve the session object
        HttpSession session1 = request.getSession(false);

        // Check if the session is not null and the username attribute is set
        if (session1 != null && session1.getAttribute("username") != null) {
            // Get the username from the session
            String username = (String) session1.getAttribute("username");
        
    %>
<div class="container">
<h1>WELCOME,  <%=username %> !</h1>
<h3>THIS WEBSITE IS CREATED BY ME FOR MY ONES TO EXPLORE CODING AND THE FUNDAMENTALS OF CODING</h3>
<p>CORE JAVA</p>
<P>DATA STRUCTURE AND ALGORITHMS<P>
<P>ADVANCE JAVA</P>
<P>WEB TECHNOLOGIES </P>

<div link> 
<button ><a href="login.jsp">LOGOUT </a></button>
  <%
        } else {
            // Redirect to the login page if the session is not valid
            response.sendRedirect("login.jsp");
        }
    %>


</div>
</div>
</body>
</html>