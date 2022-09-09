<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 09.09.2022
  Time: 17:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login page</title>
</head>
<body>
<%String msg = (String) request.getAttribute("msg");
%>
<%if (msg!=null){%>
<p style="color: red"><%=msg%></p>
<%}%>
<form action="/login" method="post">
    <input type="email" name="email" placeholder="Please input email"><br>
    <input type="password" name="password" placeholder="Please input password"><br>
    <input type="submit" value="login">
</form>
</body>
</html>
