<%--
  Created by IntelliJ IDEA.
  User: raves
  Date: 05.03.2020
  Time: 6:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create</title>
</head>
<body>
<%--<form method="post">--%>
<%--    <a href="read">Read</a>--%>
<%--    <table>--%>
<%--        <tr>--%>
<%--            <td>Name</td>--%>
<%--            <th><label>--%>
<%--                <input type="text" name="name">--%>
<%--            </label></th>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <td>Surname</td>--%>
<%--            <th><label>--%>
<%--                <input type="text" name="surname">--%>
<%--            </label></th>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <td>Age</td>--%>
<%--            <th><label>--%>
<%--                <input type="number" name="age">--%>
<%--            </label></th>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <td>--%>
<%--                <input type="submit" value="Submit">--%>
<%--            </td>--%>
<%--        </tr>--%>

<%--    </table>--%>
<%--</form>--%>
<form method="post">
    <a href="read">Read</a>
    <table>
        <tr>
            <th>
                Name
            </th>
            <td><input name="name" type="text">
            </td>
        </tr>
        <tr>
            <th>Surname</th>
            <td>
                <input name="surname" type="text">
            </td>
        </tr>
        <tr>
            <th>Age</th>
            <td>
                <input name="age" type="number">
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="Submit">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
