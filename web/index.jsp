<%@ page import="model.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
</head>
<%
    User user=(User) session.getAttribute("user");
%>
<body>
<div style="width: 1000px;margin: 0 auto">
    <div><img src="/image/Image_created_with_a_mobile_phone.png"width="1000" height="400"/></div>
    <div><h3>
        <%if (user!=null){%>
        <a href="/books/add">addBook</a>
        <a href="/authors/add">addAuthor</a>
        <a href="/logout">Logout</a>
        <%}else {%>
        <a href="/users/add">Register</a>
        <a href="/login">Login</a>
        <%}%>
        <a href="/authors">show all authors</a>
        <a href="/books">show all books</a>
    </h3></div>
</div>


</body>
</html>
