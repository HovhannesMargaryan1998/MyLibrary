<%@ page import="model.User" %><%--
  Created by IntelliJ IDEA.
  User: User
  Date: 09.09.2022
  Time: 17:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit User</title>
</head>
<body>
<%
  User user = (User) request.getAttribute("user");

%>
Please update user's data:
<form action="/users/edit" method="post">
    <input type="hidden" name="userId" value="<%=user.getId()%>">
    <input type="text" name="name" value="<%=user.getName()%>"/><br>
    <input type="text" name="surname" value="<%=user.getSurName()%>"/><br>
    <input type="email" name="email" value="<%=user.getEmail()%>"/><br>
    <input type="password" name="password" value="<%=user.getPassword()%>"/><br>

    <input type="submit" value="Update">
</form>

</body>
</html>
