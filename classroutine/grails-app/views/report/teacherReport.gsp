<%--
  Created by IntelliJ IDEA.
  User: Bijay
  Date: 4/20/2018
  Time: 9:34 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Teacher Report</title>

    <style>
    .teacher-report{
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
<div class="teacher-report">
    <table border="1px" class="table" id="table">
        <caption><h1>Teacher Report</h1></caption>
        <tr>
            <th rowspan="2">Date</th>
            <th colspan="5">Morning Shift</th>
            <th colspan="5">Day Shift</th>
            <th rowspan="2">Net Total Hour</th>
        </tr>
        <tr>
            %{--<th></th>--}%
            <th>First Period</th>
            <th>Second Period</th>
            <th>Third Period</th>
            <th>Fourth Period</th>
            <th>Total Hour</th>

            <th>First Period</th>
            <th>Second Period</th>
            <th>Third Period</th>
            <th>Fourth Period</th>
            <th>Total Hour</th>


        </tr>
    %{-------------${list}--}%
        <g:each in="${list}" var="i">
        %{-------------------------------------------${i.section.shift}--}%
            <tr>
                <td>${i.year+"-"+i.month+"-"+i.day}</td>
            %{--<th></th>--}%
                <g:if test="${i.section.shift=="Morning"}">

                    <td>${i.firstPeriod=="${teacher.codeName}"? "${i.section.groupName}" :'-'} </td>
                    <td>${i.secondPeriod=="${teacher.codeName}"? "${i.section.groupName}":'-'}</td>
                    <td>${i.thirdPeriod=="${teacher.codeName}"? "${i.section.groupName}":'-'}</td>
                    <td>${i.fourthPeriod=="${teacher.codeName}"? "${i.section.groupName}":'-'}</td>
                    <td>${mTotal}</td>
                </g:if>
                <g:if test="${i.section.shift!="Morning"}">
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>

                </g:if>

                <g:if test="${i.section.shift=="Day"}">
                    <td>${i.firstPeriod=="${teacher.codeName}"? "${i.section.groupName}" :'-'} </td>
                    <td>${i.secondPeriod=="${teacher.codeName}"? "${i.section.groupName}":'-'}</td>
                    <td>${i.thirdPeriod=="${teacher.codeName}"? "${i.section.groupName}":'-'}</td>
                    <td>${i.fourthPeriod=="${teacher.codeName}"? "${i.section.groupName}":'-'}</td>
                    <td>${dTotal}</td>

                </g:if>
                <g:if test="${i.section.shift!="Day"}">
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>

                </g:if>

                <g:set var = "netTotal" value="${mTotal+dTotal}">
                    <td>${netTotal}</td>
                </g:set>

            </tr>
        </g:each>
    </table>

    <button class="btn">Print</button>
    <button class="btnExcel">Export to Excel</button>
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
    // $('.btnExcel').click(function () {
    //    $('.table').table2excel({
    //        name: "Teacher Report",
    //        filename: "Report"
    //    }) ;
    // });
</script>
</body>
</html>