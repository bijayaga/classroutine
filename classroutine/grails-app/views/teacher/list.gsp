<%--
  Created by IntelliJ IDEA.
  User: Bijay
  Date: 4/17/2018
  Time: 7:46 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>List of Teachers</title>

    <style>
    .pagination{
        width: 150px;
        background: white;
        border-bottom: none;
        background-position: center;
    }
        .teacher-list{
            width: 1200px;
            margin: auto;
            background: #c0d3db;
            margin-bottom: 30px;
        }
    </style>

</head>

<body>
<br>
<div class="teacher-list">
    <h1 style="font-size: 25px; text-align: center;">List of Teachers</h1>
    <g:form action="search">
        <g:select name="codeName" from="${classroutine.Teacher.list().codeName}" var ="i" noSelection="['':'select teacher']">

        </g:select>

        <g:select name = "subject" from="${com.pea.Subject.list()}" var ="i" noSelection="['':'select subject']">

        </g:select>

        <g:submitButton name="search" value="search"/>
    </g:form>

    <table border="1px" cellpadding="5px">

        <tr>
            <th>S.N.</th>
            <th>Name</th>
            <th>Code Name</th>
            <th>Subject Engaged</th>
            <th>Mobile No</th>
            <th>Email</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        <g:each in = "${teacherList}" var = "t" status = "count">
            <tr>
                <td>${count+1}</td>
                <td>${t.fullName}</td>
                <td>${t.codeName}</td>
                <td>${t.subjectEngaged}</td>
                <td>${t.mobileNo}</td>
                <td>${t.email}</td>
                <td><g:link action="edit" id="${t.id}">Edit</g:link></td>
                <td><g:link action="delete" id="${t.id}" onclick="return confirm('Are you sure to delete?')">Delete</g:link></td>
            </tr>
        </g:each>

    </table>
    <div class="pagination">
        <g:paginate total="${count}"/>
    </div>
</div>
</body>
</html>