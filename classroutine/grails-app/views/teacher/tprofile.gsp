<%--
  Created by IntelliJ IDEA.
  User: Bijay
  Date: 4/18/2018
  Time: 8:47 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Teacher Profile</title>

</head>

<body>

%{--<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">--}%
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<div class="container">
    <div class="row">
        <br>
        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad" >

            <g:each in = "${teacherList}" var = "t">

            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title" style="font-size: 20px">${t.fullName}</h3>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-3 col-lg-3 " align="center">

                            <img alt="User Pic" src="${application.contextPath}/static/assets/images/${t.teacherImage}" class="img-circle img-responsive"> </div>


                        <div class=" col-md-9 col-lg-9 ">
                            <table class="table table-user-information">
                                <tbody class="tbody">

                                <tr>
                                    <th style="font-size: 18px">Subject:</th>
                                    <td style="font-size: 18px">${t.subjectEngaged}</td>
                                </tr>

                                <tr>
                                    <th style="font-size: 18px">Mobile No1:</th>
                                    <td style="font-size: 18px">${t.mobileNo}</td>
                                </tr>

                                <tr>
                                    <th style="font-size: 18px">Email:</th>
                                    <td style="font-size: 18px"><a href="mailto:info@support.com">${t.email}</a></td>
                                </tr>

                                <tr>
                                    <th style="font-size: 18px">Temporary Address:</th>
                                    <td style="font-size: 18px">${t.temporaryAddress}</td>
                                </tr>
                                <tr>
                                    <th style="font-size: 18px">Permanent Address:</th>
                                    <td style="font-size: 18px">${t.permanentAddress}</td>
                                </tr>
                                <tr>
                                <th style="font-size: 18px">Hire Date:</th>
                                <td style="font-size: 18px">${t.joinDate}</td>

                                </tr>

                                <tr>
                                    <th style="font-size: 18px">Time Status:</th>
                                    <td style="font-size: 18px">${t.timeStatus}</td>

                                </tr>

                                <tr>
                                    <th style="font-size: 18px">Other Institute:</th>
                                    <td style="font-size: 18px">${t.otherInstitute}</td>

                                </tr>

                                <tr>
                                    <th style="font-size: 18px">Remarks:</th>
                                    <td style="font-size: 18px">${t.remarks}</td>

                                </tr>
                                </g:each>

                                </tbody>
                            </table>

                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>

</body>
</html>