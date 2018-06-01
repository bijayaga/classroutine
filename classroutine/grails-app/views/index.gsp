<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Class Routine System</title>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
</head>

<body>
   %{-- <content tag="nav">
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
                <li><g:link controller="user" action="#">Change Password</g:link></li>
                <li><g:link controller="user" action="#">Change Authority</g:link></li>
                <li><a href="#">Logout</a></li>
            </ul>
        </li>

    </content>--}%

    <div class="svg" role="presentation">
        <div class="grails-logo-container">
            <asset:image src="logo-pea1.png" class="grails-logo"/>
        </div>
    </div>

    <div id="content" role="main">
        <section class="row colset-2-its">
            <h1>Welcome to Class Routine Management System</h1>

            <p>
                'Class Routine System' is a web software for teacher's daily attendance sheet and to prepare general report.
            </p>

            </section>
    </div>

</body>
</html>