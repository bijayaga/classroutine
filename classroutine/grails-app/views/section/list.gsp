<%--
  Created by IntelliJ IDEA.
  User: Bijay
  Date: 4/18/2018
  Time: 8:36 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Group/Section List</title>
    <style>
    /*.pagination{*/
    /*width: 150px;*/
    /*background: white;*/
    /*border-bottom: none;*/
    /*background-position: center;*/
    /*}*/
    .section-list{
        width: 1200px;
        margin: auto;
        background: #c0d3db;
        margin-bottom: 30px;
    }
    </style>
</head>

<br>
<body>
<br>
<div class="section-list">
    <h1 style="font-size: 25px; text-align: center;">List of Groups/Sections</h1>
    <g:form action="search">
        <g:select name="shift" from="['Morning','Day']" var ="i" noSelection="['':'select shift']">

        </g:select>

        <g:submitButton name="search" value="search"/>
    </g:form>

    <table cellpadding="5px" border="1px" id="table-id">
        <tr>
            <th>S.N.</th>
            <th>Group/Section Name</th>
            <th>Shift</th>
            <th>Start Date</th>
            <th>Remarks</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        <g:each in = "${sectionList}" var = "s" status = "count">
            <tr>
                <td>${count+1}</td>
                <td>${s.groupName}</td>
                <td>${s.shift}</td>
                <td>${s.startDate}</td>
                <td>${s.remarks}</td>
                <td><g:link action="edit" id="${s.id}">Edit</g:link></td>
                <td><g:link action="delete" id="${s.id}" onclick="return confirm('Are you sure to delete?')">Delete</g:link></td>
            </tr>

        </g:each>
        </table>
            <asset:javascript src="jquery-2.2.0.min.js"/>
            <br>
            <g:form action="" method="">
                <g:submitButton name="print" value="print" onclick="return printpdf()"/>
            </g:form>
</div>

<asset:javascript src="jquery-2.2.0.min.js"/>
<asset:javascript src="jspdf.js"/>

<script>
    function tableToJson(table) {
        var data=[];
        var headers=[];

        for(var i=0;i<table.rows[0].cells.length;i++){
            headers[i]=table.rows[0].cells[i].innerHTML.toLocaleLowerCase().replace(/ /gi,'');
        }
        data.push(headers);

        for(var i=1;i<table.rows.length;i++){
            var tableRow=table.rows[i];
            var rowData={};
            for(var j=0;j<tableRow.cells.length;j++){
                rowData[headers[j]=tableRow.cells[j].innerHTML];
            }
            data.push(rowData);
        }
        return data;
    }
    function printpdf() {

        var table=tableToJson($('#table-id').get(0));
        var doc = new jsPDF('1','pt','letter',true);

        doc.cellInitialize();
        $.each(table,function(i,row){
            $.each(row,function (j, cell) {
                if(j=="email" || j==o){
                    doc.cell(1,10,190,20,cell,i);
                }
                else{
                    doc.cell(1,10,90,50,cell,i);
                }

            });
        });
        doc.save('list.pdf');
    }
</script>
</body>
</html>