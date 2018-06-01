<%--
  Created by IntelliJ IDEA.
  User: Bijay
  Date: 4/18/2018
  Time: 9:47 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Edit Section</title>
</head>

<body>


<div class="group">
    <g:uploadForm method="post" action="update">
        <g:hiddenField name = "id" value="${editSection.id}"/>
        <table>
            <caption><h2>Edit Group/Section</h2></caption>
            <tr>
                <th>Group/Section Name:-</th>
                <td>
                    <input type="text" name="groupName" value="${editSection.groupName}" placeholder="Enter new group" required="true"/>
                </td>
            </tr>

            <tr>
                <th>Shift:-</th>
                <td>
                    <input type="radio" name="shift" value="Morning"/>Morning <br>
                    <input type="radio" name="shift" value="Day"/>Day
                </td>
            </tr>

            <tr>
                <th>Start Date:-</th>
                <td>
                    <input type="text" name= "startDate" value="${editSection.startDate}" placeholder="Enter group start date"/>
                </td>
            </tr>

            <tr>
                <th>Remarks:-</th>
                <td>
                    <input type="text" name= "remarks" value= "${editSection.remarks}" placeholder="Enter remarks"/>
                </td>
            </tr>

            <tr>
                <td COLSPAN="100" align="center">
                    <input type="submit" value="update" name="update"/>
                </td>
            </tr>

        </table>
    </g:uploadForm>

</body>
</html>