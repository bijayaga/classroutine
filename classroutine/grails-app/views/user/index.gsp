<%--
  Created by IntelliJ IDEA.
  User: Bijay
  Date: 5/24/2018
  Time: 5:56 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>User list</title>
</head>

<body>
<table>
    <tr>
        <th>S.N</th>
        <th>Name</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>

    <g:each in="${ulist}" var="u" status="count">
        <tr>
            <td>${count+1}</td>
            <td>${u.username}</td>
            <td></td>
        </tr>
    </g:each>
</table>
</body>
</html>