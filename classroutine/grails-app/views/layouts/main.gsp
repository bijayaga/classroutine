<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        Class Routine System
        %{--<g:layoutTitle default="Grails"/>--}%
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <asset:stylesheet src="application.css"/>

    <g:layoutHead/>

    <style>

    html, body{
        height: 100%;
        margin: 0;
    }
    footer{
        background-color: #0452a5;
        text-align: right;
        color: white;
        font-size: medium;
        padding: 20px;
    }
    .wrapper{
        min-height: 100%;
        margin-bottom: -100px;

    }
    .wrapper:after{
        content:"";
        display: block;
    }
    .wrapper:after, footer{
        height: 100px;
    }
    </style>

</head>
<body>
<div class="wrapper">
<div class="navbar navbar-default navbar-static-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/#">
                <i class="fa grails-icon">
                    <asset:image src="logo-pea1.png"/>
                </i> Class Routine System
            </a>
        </div>
        <div class="navbar-collapse collapse" aria-expanded="false" style="height: 0.8px;">
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">

                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                        Teacher<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><g:link controller="teacher" action="register">Add</g:link></li>
                        <li><g:link controller="teacher" action="list">List</g:link></li>
                    </ul>
                </li>

                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                        Subject <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><g:link controller="subject" action="create">New</g:link></li>
                        <li><g:link controller="subject" action="list">List</g:link></li>
                    </ul>
                </li>

                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                        Group/Section <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><g:link controller="section" action="create">New</g:link></li>
                        <li><g:link controller="section" action="list">List</g:link></li>
                    </ul>
                </li>

                <li>
                    <g:link controller="routine" action="search">Prepare Routine</g:link>
                </li>

                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                        Report<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><g:link controller="report" action="searchMonth">Monthly</g:link></li>
                        <li><g:link controller="report" action="searchTeacher">Individual Teacher</g:link></li>
                    </ul>
                </li>

                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                        User<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><g:link controller="user" action="create">Create</g:link></li>
                        <li><g:link controller="user" action="changePassword">Change Password</g:link></li>
                        <li><g:link controller="logout">Logout</g:link></li>
                    </ul>
                </li>

            </ul>
        </div>
    </div>
</div>
    <g:layoutBody/>


%{--<div class="footer" role="contentinfo"></div>--}%

%{--<div id="spinner" class="spinner" style="display:none;">--}%
%{--<g:message code="spinner.alt" default="Loading&hellip;"/>--}%
%{--</div>--}%


</div>
    <footer>
        developer: Bijay Gautam
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        copyright ©: developer
    </footer>


<asset:javascript src="application.js"/>

</body>
</html>
