<%--
  Created by IntelliJ IDEA.
  User: Bijay
  Date: 4/20/2018
  Time: 6:49 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Search By Shift</title>
</head>

<body>

<br>
<g:form action="getDetail">
    Select Shift:
    <g:select name="shift" from="['Morning','Day']" noSelection="['':'select shift']">

    </g:select>

    <g:submitButton name="getDetail" value="Get Detail"/>


</g:form>

</body>
</html>