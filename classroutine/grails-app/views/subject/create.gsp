<%--
  Created by IntelliJ IDEA.
  User: Bijay
  Date: 4/17/2018
  Time: 9:10 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Add Subject</title>


    <style>
    .subject{
        width: 500px;
        border: 1px dotted blue;
        margin: auto;
        padding: 50px;
        background: #c0d3db;
    }
    input[type=text]{
        border-radius: 5px;
        width: 300px;
    }
    input[type=submit]{
        position: center;
        cursor: pointer;
        font: 18px bold;
    }
    p, span{
        padding: 2px;
        font-size: 18px;
        font-family: Cambria;
    }

    </style>

</head>

<body>
<br>
<div class="subject">
<g:form method = "post" action = "save">

    <p>Subject:</p>
        <g:textField name="subjectName" placeholder ="Enter subject" id="subjectName"/>
    <span id="message" style="color: red"> </span>

    <br/>
    <g:submitButton name = "save" value = "save" onclick="return validate()"/>
</g:form>
</div>


<script>
    function validate(){
        // alert("here");
        var subject = document.getElementById('subjectName').value;
        if(subject==""){
            // alert("Subject name required");
            document.getElementById('message').innerHTML="fill the subject name";
            return false;
        }
    }
</script>

</body>
</html>