<%@ page import="model.Book" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Books page</title>
</head>
<body>
<%
    List<Book> books = (List<Book>) request.getAttribute("books");
%>
<table border="1">
    <tr>
        <th>profilePic</th>
        <th>id</th>
        <th>title</th>
        <th>description</th>
        <th>price</th>
        <th>author</th>
        <th>action</th>
    </tr>
    <%
        for (Book book : books) {


    %>
    <tr>
        <td>
        <%if (book.getProfilePic() == null || book.getProfilePic().length() == 0) {%>
        <img src="\image\defaultprofileimage.png" width="100"/>
        <%} else {%>
        <img src="/getImage?profilePic=<%=book.getProfilePic()%> " width="100"/>
            <%}%></td>

        <td><%=book.getId()%>
        </td>
        <td><%=book.getTitle()%>
        </td>
        <td><%=book.getDescription()%>
        </td>
        <td><%=book.getPrice()%>
        </td>
        <%if (book.getAuthor() != null) {%>
        <td><%=book.getAuthor().getName()%><%=book.getAuthor().getSurname()%>
            <%} else {%>
            <span style="color: red">there is no author</span>
            <%}%>
        </td>

        <td>

            <a href="books/remove?bookId=<%=book.getId()%>">Remove</a> |
            <a href="books/edit?bookId=<%=book.getId()%>">Edit</a>

        </td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>
