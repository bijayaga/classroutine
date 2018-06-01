<%--
  Created by IntelliJ IDEA.
  User: Bijay
  Date: 3/6/2018
  Time: 8:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Create Group/Section</title>

    <asset:stylesheet href="createsection.css"/>
</head>
<body>
</br>

<h1 style="text-align: center; color: #2e6da4; font-size: 25px">Create New Group/Section</h1>
<div class="group">
    <g:uploadForm method="post" action="save">

        <table>
            <tr>
                <td> <p>Group/Section Name:</p></td>
                <td><input type="text" name="groupName" id ="groupName" placeholder="Enter new group"/>
                    <span id="groups" style="color: red"></span></td>
            </tr>
            <tr>

                <td>    <p>Shift:</p></td>
                <td>  <input type="radio" name="shift" value="Morning"/>Morning
                    <input type="radio" name="shift" value="Day"/>Day</td>
            </tr>
            <tr>
                <td>   <p>Start Date:</p></td>
                <td><input type="text" name="startDate" placeholder="Enter group start date"/></td>
            </tr>
            <tr>
                <td>   <p>Remarks:</p></td>
                <td><input type="text" name="remarks" placeholder="Enter remarks"/></td>
            </tr>
            <tr>
                <td><input type="submit" value="create" name="create" onclick="return validate()"/></td>
            </tr>
        </table>
    </g:uploadForm>
</div>

<script>
    function validate() {
        // alert("here");
        var group = document.getElementById('groupName').value;

        if (group == "") {
            // alert("Subject name required");
            document.getElementById('groups').innerHTML = "** Please fill group name";
            return false;
        }
    }
</script>
</body>
</html>
