<%--
  Created by IntelliJ IDEA.
  User: Bijay
  Date: 4/20/2018
  Time: 6:53 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Search by teacher</title>
</head>

<body>
<br>
<g:form action="getReport">
    Select Detail:

    <g:select name="teacherReport" from="${classroutine.Teacher.list().fullName}"
              var ="i" noSelection="['':'select teacher']"></g:select>

    <g:select name="year" from="${2075..2090}" var ="i" noSelection="['':'select year']"/>

    <g:select name="month" from="['Baisakh','Jestha','Asadh','Shrawan','Bhadra','Ashwin','Kartik','Mangsir','Poush','Magh',
                                  'Falgun','Chaitra']" var ="i" noSelection="['':'select month']"/>

    <g:submitButton name="getReport" value="Get Report"/>

</g:form>


</body>
</html>