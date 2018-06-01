<%--
  Created by IntelliJ IDEA.
  User: Bijay
  Date: 4/20/2018
  Time: 6:31 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Generating Report</title>
</head>

<body>
<br>
<g:form action="getReport">
    Select Date:
    <g:select name="year" from="${2075..2090}" var ="i" noSelection="['':'select year']"/>

    <g:select name="monthlyReport" from="['Baisakh','Jestha','Asadh','Shrawan','Bhadra','Ashwin','Kartik','Mangsir','Poush','Magh',
                                          'Falgun','Chaitra']" var ="i" noSelection="['':'select month']"></g:select>

    <g:submitButton name="getReport" value="Get Report"/>
</g:form>

</body>
</html>