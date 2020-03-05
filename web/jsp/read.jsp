<%--
  Created by IntelliJ IDEA.
  User: raves
  Date: 05.03.2020
  Time: 6:03
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Read</title>
</head>
<body>
<a href="create">Create</a>
<table>
    <th>Id</th>
    <th>Name</th>
    <th>Surname</th>
    <th>Age</th>
    <th>Actions</th>
    <jsp:useBean id="allUsers" scope="request" type="java.util.List"/>
    <c:forEach var="user" items="${allUsers}">
        <tr>
            <td><c:out value="${user.id}"/></td>
            <td><c:out value="${user.name}"/></td>
            <td><c:out value="${user.surname}"/></td>
            <td><c:out value="${user.age}"/></td>
            <a href="update?id=<c:out value='${user.id}'/>">Update</a>
            <a href="delete?id=<c:out value='${user.id}'/>">Delete</a>
        </tr>
    </c:forEach>

</table>

</body>
</html>
