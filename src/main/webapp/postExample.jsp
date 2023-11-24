<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<html>
<head>
    <meta charset="UTF-8">
    <title>POST Example</title>
</head>
<body>

<%-- Check if the form is submitted --%>
<%
    if ("POST".equalsIgnoreCase(request.getMethod())) {
        // Retrieve form data
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Process the form data (you can perform validation, authentication, etc. here)
        // For simplicity, just printing the data to the response
%>
        <p>User name: <%= username %></p>
        <p>Password: <%= password %></p>
<%
    }
%>

<%-- Display the form --%>
<form method="post" action="<%= request.getRequestURI() %>">
    <label for="username">User name:</label>
    <input type="text" name="username" required><br>

    <label for="password">Password:</label>
    <input type="password" name="password" required><br>

    <input type="submit" value="Submit">
</form>

</body>
</html>