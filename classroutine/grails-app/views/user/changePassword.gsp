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
    <title>Change Password</title>

    <style>
    .change-password{
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
<div class="change-password">
    <table>
        <h1>Change Password</h1>
        <g:form action="update" method="post">

            <tr>
                <td>Current Password:</td>
                <td><g:textField name="currentPassword" placeholder="Enter current assword"/></td>
            </tr>
            <tr>
                <td>New Password:</td>
                <td><g:passwordField name="newPassword" placeholder="Enter new password"/></td>
            </tr>
            <tr>
                <td>Confirm password:</td>
                <td><g:passwordField name="confirmNewPassword" placeholder="Enter confirm password"/></td>
            </tr>
            <tr>
                <td colspan="2"><g:submitButton name="update" value="change"/></td>
            </tr>

        </g:form>
    </table>
</div>
</body>
</html>