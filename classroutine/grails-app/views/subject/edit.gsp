<%--
  Created by IntelliJ IDEA.
  User: Bijay
  Date: 4/17/2018
  Time: 9:10 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Edit Subject</title>
</head>

<body>

<g:form method = "post" action = "update">
    <g:hiddenField name = "id" value="${editSubject.id}"/>

    <g:textField name="subjectName" value="${editSubject.subjectName}"/>
    <g:submitButton name = "update" value = "update"/>

</g:form>

</body>
</html>