<%--
  Created by IntelliJ IDEA.
  User: Bijay
  Date: 4/20/2018
  Time: 6:59 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Search By Group/Section</title>
</head>

<body>

<g:form action="getReport">
    Select Shift:
    <g:select name="shift" from="['Morning','Day']" var ="i" noSelection="['':'select shift']">
    </g:select>

    <g:select name="groupReport" from="${classroutine.Section.list().groupName}" var="j" noSelection="['':'select group']">
    </g:select>

    <g:submitButton name="getReport" value="Get Report"/>


</g:form>

</body>
</html>