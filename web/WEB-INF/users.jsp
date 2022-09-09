<%@ page import="model.User" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: User
  Date: 09.09.2022
  Time: 17:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Users page</title>
</head>
<body>
<%
  List<User> users = (List<User>) request.getAttribute("users");
%>
<table border="1">
  <tr>
    <th>id</th>
    <th>name</th>
    <th>surname</th>
    <th>email</th>
    <th>password</th>
    <th>action</th>
  </tr>
  <%
    for (User user : users) {
  %>
  <tr>
    <td><%=user.getId()%>
    </td>
    <td><%=user.getName()%>
    </td>
    <td><%=user.getSurName()%>
    </td>
    <td><%=user.getEmail()%>
    </td> <td><%=user.getPassword()%>
    </td>
    <td>

      <a href="/users/remove?userId=<%=user.getId()%>" Remove></a> |
      <a href="users/edit?userId=<%=user.getId()%>">Edit</a>

    </td>
  </tr>
  <%
    }
  %>
</table>

</body>
</html>
