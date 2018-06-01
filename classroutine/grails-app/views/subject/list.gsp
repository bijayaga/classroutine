<%--
  Created by IntelliJ IDEA.
  User: Bijay
  Date: 4/19/2018
  Time: 6:20 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Subject List</title>
    <style>
    .subject-list{
        width: 1200px;
        margin: auto;
        background: #c0d3db;
    }
    </style>
</head>

<body>
<br>
<div class="subject-list">
    <h1 style="font-size: 25px; text-align: center;">List of Subjects</h1>

    <table border="1px">
        <tr>
            <th>S.N.</th>
            <th>Subject</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>

        <g:each in ="${subjectList}" var = "s" status="count">

            <tr>
                <td>${count+1}</td>
                <td>${s.subjectName}</td>
                <td><g:link action="edit" id="${s.id}">Edit</g:link></td>
                <td><g:link action="delete" id="${s.id}" onclick="return confirm('Are you sure to delete?')">Delete</g:link></td>
            </tr>
        </g:each>
        <button class="btn">Print</button>
    </table>
</div>

</body>
</html>