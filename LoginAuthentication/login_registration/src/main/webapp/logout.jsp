<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <%
        // Retrieve the session object
        HttpSession currentsession = request.getSession(false);

        // Check if the session is not null and the username attribute is set
        if (currentsession != null ) {
            currentsession.invalidate();
  
        } else {
            // Redirect to the login page if the session is not valid
            response.sendRedirect("welcome.html");
        }
    %>
</body>
</html>