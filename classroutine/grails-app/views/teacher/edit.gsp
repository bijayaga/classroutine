<%--
  Created by IntelliJ IDEA.
  User: Bijay
  Date: 3/17/2018
  Time: 8:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name = "layout" content="main"/>
    <title>Edit Teacher</title>
</head>

</head>
<body>

<br>
<div class="register">
    <h1 style="font-size: 25px">Edit Teacher</h1>
    <g:form method="post" action="update">
        <input type="hidden" name="id" value="${editTeacher.id}"/>
        <table>
            <tr>
                <th>Full Name:- </th>
                <td><input type="text" name ="fullName" value = "${editTeacher.fullName}" required="true"/></td>
            </tr>

            <tr>
                <th>Code Name:- </th>
                <td><input type="text" name="codeName" value = "${editTeacher.codeName}" required="true"/></td>
            </tr>

            <tr>
                <th>Permanent Address:- </th>
                <td><input type="text" name="permanentAddress" value = "${editTeacher.permanentAddress}"/></td>
            </tr>

            <tr>
                <th>Temporary Address:- </th>
                <td><input type="text" name="temporaryAddress" value = "${editTeacher.temporaryAddress}"/></td>
            </tr>

            <tr>
                <th>Mobile No:- </th>
                <td><input type="text" name="mobileNo" value = "${editTeacher.mobileNo}" required="true"/></td>
            </tr>
            <tr>
                <th>Email:- </th>
                <td><input type="email" name="email" value = "${editTeacher.email}"/></td>
            </tr>

            <tr>
                <th>Gender:- </th>
                <td><input type="radio" name="gender" value="Male" ${editTeacher?.gender.toString()=='Male' ? 'checked':''}>Male
                    <input type="radio" name="gender" value="Female" ${editTeacher?.gender.toString()=='Female' ? 'checked':''}>Female</td>
            </tr>

            <tr>
                <th>Subject Engaged:- </th>
                <td>
                    <g:select from="${com.pea.Subject.list()}" name = "subjectEngaged"
                              noSelection="['':'select subject']"
                    >
                    </g:select>
                </td>
            </tr>
            <tr>
                <th>Time Status:- </th>
                <td><input type="radio" name="timeStatus" value="Full Time" ${editTeacher?.timeStatus.toString()=='Full Time' ? 'checked':''}>Full Time
                    <input type="radio" name="timeStatus" value="Part Time" ${editTeacher?.timeStatus.toString()=='Part Time' ? 'checked':''}>Part Time</td>
            </tr>
            <tr>
                <th>Join Date:- </th>
                <td><input type="text" name="joinDate" value = "${editTeacher.joinDate}"/></td>
            </tr>
            <tr>
                <th>Other Colleges/University<br>/Institutions Engaged:- </th>
                <td><input type="text" name="otherInstitute" value = "${editTeacher.otherInstitute}"/></td>
            </tr>
            <tr>
                <th>Upload Photo:-</th>
                <td>
                    <img src="${application.contextPath}/static/assets/images/${editTeacher.teacherImage}">
                </td>
            </tr>
            <tr>
                <th>Remarks:- </th>
                <td><textarea name="remarks">${editTeacher.remarks}</textarea></td>
            </tr>

            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="update" name="update">

                </td>
            </tr>
        </table>
    </g:form>
</div>
</body>
</html>