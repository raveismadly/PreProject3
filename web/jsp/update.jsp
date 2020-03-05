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
    <title>Update</title>
</head>
<body>
<a href="create.jsp">Create</a>
<a href="read.jsp">Read</a>
<jsp:useBean id="haveThisUser" type="model.User" scope="request"/>
<c:if test="${haveThisUser!=null}">
<form action="update" method="post">
    </c:if>
    <table>
        <c:if test="${haveThisUser!=null}">
            <input type="hidden" value="<c:out value='${haveThisUser.id}'/>" name="id"/>
        </c:if>
        <tr>
            <th>Name</th>
            <td><label>
                <input name="name" value="<c:out value='${haveThisUser.name}'/>"/>
            </label></td>
            <th>Surname</th>
            <td><label>
                <input name="name" value="<c:out value='${haveThisUser.surname}'/>"/>
            </label></td>
            <th>Age</th>
            <td><label>
                <input name="name" value="<c:out value='${haveThisUser.age}'/>"/>
            </label></td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="Save">
            </td>
        </tr>
    </table>
</form>


</body>
</html>
