<%--
  Created by IntelliJ IDEA.
  User: Bijay
  Date: 4/20/2018
  Time: 9:42 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Group/Section Report</title>
</head>

<body>
<table border="1px">
    <caption>Group Report</caption>
    <tr>
        <th>Date</th>
        <th>First Period</th>
        <th>Second Peroid</th>
        <th>Third Peroid</th>
        <th>Fourth Peroid</th>
        <th>Total Peroid</th>
    </tr>
</table>

<g:form action="#">
    <g:submitButton name="printReport" value="Print"/>
</g:form>

<g:form action="#">
    <g:submitButton name="exportReport" value="Export in Excel"/>
</g:form>
</body>
</html>