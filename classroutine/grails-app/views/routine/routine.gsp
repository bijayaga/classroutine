<%--
  Created by IntelliJ IDEA.
  User: Bijay
  Date: 4/19/2018
  Time: 7:58 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta content="main" name="layout"/>
    <title>Prepare Routine</title>
    <style>
    select{
        border-radius: 5px;
        width: 100px;
    }
    .routine{
        width: 1200px;
        margin: auto;
        background: #c0d3db;
        margin-bottom: 30px;
    }
    table tr, td {
        font-size: 15px;
        border: black dotted 1px;
    }
    h1{
        font-size: 25px;
        text-align: center;
    }
    </style>

</head>

<body>
<div class="routine">
    <div class="wrap">
        <g:form method="post" action="routine">
            <div class="header">
                <h1>Daily Routine</h1>

                <br/>
            <p style="font-size: 18px">Date:

                <g:select name="year" from="${2075..2090}" var ="i" noSelection="['':'year']"/>

                <g:select name="month" from="['Baisakh','Jestha','Asadh','Shrawan','Bhadra','Ashwin','Kartik','Mangsir','Poush','Magh',
                                              'Falgun','Chaitra']" var ="i" noSelection="['':'month']"/>


                <g:select name="day" from="${1..32}" var ="i" noSelection="['':'day']"/>

                <g:select name="week" from="['Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday']"
                          var ="i" noSelection="['':'week']">
                    </p>

                </g:select>
            </div>

            <br>
            <br>
            <table class="table" id="table">

                <tr>
                    <th>Groups</th>
                    <th>1st Period<br>
                        <input type="text" value="1" name ="firstPeriodWeight" size="5"/></th>
                    <th>2nd Period<br>
                        <input type="text" value="1" name="secondPeriodWeight" size="5"/></th>
                    <th>3rd Period<br>
                        <input type="text" value="1" name="thirdPeriodWeight" size="5"/></th>
                    <th>4th Period<br>
                        <input type="text" value="1" name="fourthPeriodWeight" size="5"/></th>

                </tr>
                <g:each in ="${groupList}" var="g">
                    <g:hiddenField name="shift" value="${shift}"/>
                    <tr>
                        <td>
                            ${g.groupName}
                        </td>

                        <td>
                            <g:select name="firstPeriod[]" id="firstPeriod[]" from="${classroutine.Teacher.list().codeName}" var = "t"
                                      noSelection="['':'teacher']"></g:select>
                        </td>

                        <td>
                            <g:select name="secondPeriod[]" from="${classroutine.Teacher.list().codeName}" var = "t"
                                      noSelection="['':'teacher']"></g:select>
                        </td>

                        <td>
                            <g:select name="thirdPeriod[]" from="${classroutine.Teacher.list().codeName}" var = "t"
                                      noSelection="['':'teacher']"></g:select>
                        </td>

                        <td>
                            <g:select name="fourthPeriod[]" from="${classroutine.Teacher.list().codeName}" var = "t"
                                      noSelection="['':'teacher']"></g:select>
                        </td>
                    </tr>
                </g:each>

                <tr>
                    <td colspan="5"><input type="submit" value="submit" onclick="return validate()"/>

                        %{--<input type="submit" value="print" class="btn"/></td>--}%
                </tr>
            </table>
            <button class="btn">Print</button>
        </g:form>

    </div>
</div>
<asset:javascript src="jquery-2.2.0.min.js"/>
<script>
    function validate(){
        var firstperiod = [];
        firstperiod=document.getElementsByID(['firstPeriod']).values();

        for(var i=0; i < firstperiod.length; i++){
            for(var j=i+1; j < firstperiod.length; j++){
                if(firstperiod[i]==firstperiod[j] && i != j) {
                    alert("Teacher repeated in first period");
                    return false;
                }
            }
        }
    }

</script>

</body>
</html>