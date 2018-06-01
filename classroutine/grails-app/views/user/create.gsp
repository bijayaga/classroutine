<%--
  Created by IntelliJ IDEA.
  User: Bijay
  Date: 4/21/2018
  Time: 7:48 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Create User</title>

    <style>
    .user-create{
        width: 650px;
        margin: auto;
        background: #c0d3db;
        margin-bottom: 30px;
        font-size: 18px;
    }
    h1{
        font-size: 25px;
        text-align: center;
    }
    </style>

</head>
<body>
<br>
<div class="user-create">
    <table>
        <h1>Create New User</h1>
        <g:form action="save" method="post">

            <tr>
                <td>User Name:</td>
                <td><g:textField name="username" id="username" placeholder="Enter user name"/>
                    <span id = "uname" style="color:red; font-weight: bold"/>
                </td>
            </tr>
            <tr>
                <td>Password:</td>
                <td><g:passwordField name="password" id="password" placeholder="Enter password"/>
                    <span id = "pword" style="color:red; font-weight: bold"/>
                </td>
            </tr>
            <tr>
                <td>Confirm password:</td>
                <td><g:passwordField name="confirmPassword" id="confirmPassword" placeholder="Enter confirm password"/>
                    <span id = "confirmPass" style="color:red; font-weight: bold"/></td>
            </tr>
            <tr>
                <td colspan="2"><g:submitButton name="save" value="create" onclick="return uservalidate()"/></td>
            </tr>

        </g:form>
    </table>
</div>

<asset:javascript src="user-create.js"/>
</body>
</html>