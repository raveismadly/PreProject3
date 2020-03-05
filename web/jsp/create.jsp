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
<form method="post">
    <a href="read.jsp">Read</a>
    <table>
        <tr>
            <td>Name</td>
            <th><label>
                <input type="text" name="name">
            </label></th>
        </tr>
        <tr>
            <td>Surname</td>
            <th><label>
                <input type="text" name="surname">
            </label></th>
        </tr>
        <tr>
            <td>Age</td>
            <th><label>
                <input type="number" name="age">
            </label></th>
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
