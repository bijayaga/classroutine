<%--
  Created by IntelliJ IDEA.
  User: Bijay
  Date: 4/20/2018
  Time: 9:27 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Monthly Report</title>
    <style>
        .monthly-report{
            width: 1500px;
            margin: auto;
        }
        .btn{
            background: green;
            color: white;
        }
    </style>

</head>

<body>
<br>
<div class="monthly-report">
<table border="1px" class="table" id="table">
    <caption><h1 style="font-size: 25px">Monthly Report</h1></caption>
    <tr>
        <th>S.N.</th>
        <th>Teacher</th>
        <th>Morning</th>
        <th>Day</th>
        <th>Total</th>
    </tr>
    <tr>
        <td>1</td>
        <td>RPS</td>
        <td>50.0</td>
        <td>40.0</td>
        <td>90.0</td>
    </tr>
    <tr>
        <td>2</td>
        <td>NS</td>
        <td>65.0</td>
        <td>35.5</td>
        <td>100.5</td>
    </tr>

</table>

    <button class="btn">Print</button>

    <g:submitButton name="exportReport" value="Export in Excel"/>
</div>

<asset:javascript src="jquery-2.2.0.min.js"/>

<script>
    $('.btn').click(function(){
        var printme = document.getElementById('table');
        var wme = window.open("","","width = 900, height = 700");
        wme.document.write(printme.outerHTML);
        wme.document.close();
        wme.focus();
        wme.print();
        wme.close();

    });
</script>
</body>
</html>