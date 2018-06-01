<%--
  Created by IntelliJ IDEA.
  User: Bijay
  Date: 4/16/2018
  Time: 9:00 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<%--
  Created by IntelliJ IDEA.
  User: Bijay
  Date: 3/6/2018
  Time: 8:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>
<head>
    <meta charset="UTF-8">
    <meta name="layout" content="main"/>
    <title>Register Teacher</title>

    <asset:stylesheet href="registerform.css"/>
    <asset:javascript src="registerform.js"/>

</head>
<body>

<h1 style="color: #2e6da4; text-align: center; font-size: 30px;"> Teacher Registration Form</h1>
<div class="register">

    <g:uploadForm method="post" action="save">
        <table>
            <tr>
                <td><p> Full Name:</p></td>
                <td><input type="text" name ="fullName" id = "fullName" placeholder="Enter full name" autocomplete="off"/>
                    <span id = "fname" style="color:red; font-weight: bold"></td>
            </tr>

            <tr>
                <td>   <p>Code Name:</p></td>
                <td>  <input type="text" name="codeName" id ="codeName" placeholder="Enter code name" autocomplete="off"/>
                    <span id = "cname" style="color:red; font-weight: bold"></span></td>
            </tr>

            <tr>
                <td>   <p>Permanent Address:</p></td>
                <td><input type="text" name="permanentAddress" placeholder="Enter permanent address"/></td>
            </tr>
            <tr>
                <td>    <p>Temporary Address:</p></td>
                <td> <input type="text" name="temporaryAddress" placeholder="Enter temporary address"/></td>
            </tr>
            <tr>
                <td><p>Mobile No:</p></td>
                <td><input type="text" name="mobileNo" id="mobileNo" placeholder="Enter mobile no" autocomplete="off"/>
                    <span id = "mobile" style="color:red; font-weight: bold"></span></td>
            </tr>
            <tr>
                <td><p>Email:</p></td>
                <td><input type="text" name="email" id="email" placeholder="Enter email id" autocomplete="off"/>
                    <span id = "emailid" style="color:red; font-weight: bold"></span></td>
            </tr>
            <tr>
                <td><p>Gender:</p></td>
                <td><input type="radio" name="gender" value="Male">Male
                    <input type="radio" name="gender" value="Female">Female</td>
            </tr>
            <tr>
                <td><p>Subject Engaged:</p></td>
                <td><g:select from="${com.pea.Subject.list()}" name = "subjectEngaged" noSelection="['':'select subject']"></g:select></td>
            </tr>
            <tr>
                <td><p>Time Status:</p></td>
                <td><input type="radio" name="timeStatus" value="full-time"/>Full Time
                    <input type="radio" name="timeStatus" value="Part-time"/>Part Time</td>
            </tr>
            <tr>
                <td><p>Join Date:</p></td>
                <td><input type="text" name="joinDate"/></td>
            </tr>
            <tr>
                <td><p>Other Institutions Engaged:</p></td>
                <td><input type="text" name="otherInstitute" placeholder="Enter other institute engaged"/></td>
            </tr>
            <tr>
                <td><p>Upload Photo:</p></td>
                <td><input type="file" name="teacherImage"/></td>
            </tr>
            <tr>
                <td><p>Remarks:</p></td>
                <td> <textarea name="remarks"></textarea></td>
            </tr>
            <tr>
               <td colspan="2">
                   <input type="submit" value="register" name="register" onclick="return validate()"/></td>
            </tr>
        </table>
    </g:uploadForm>

</div>
</body>
</html>