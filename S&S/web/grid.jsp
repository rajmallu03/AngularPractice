<%--
  Created by IntelliJ IDEA.
  User: Jerold Joel
  Date: 8/24/2017
  Time: 11:25 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

    <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>


    <link href="//ajax.googleapis.com/ajax/libs/jqueryui/1/themes/smoothness/jquery-ui.css" type="text/css" rel="stylesheet" />
    <link href="//cdn.jsdelivr.net/jqgrid/4.6.0/css/ui.jqgrid.css" type="text/css" rel="stylesheet"/>
    <link href="//cdn.jsdelivr.net/jqgrid/4.6.0/plugins/searchFilter.css" rel="stylesheet" type="text/css">
    <link href="//cdnjs.cloudflare.com/ajax/libs/jqgrid/4.6.0/plugins/ui.multiselect.css" rel="stylesheet" type="text/css"/>

    <script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.11.1/jquery-ui.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jqgrid/4.6.0/plugins/ui.multiselect.js"></script>
    <script src="//cdn.jsdelivr.net/jqgrid/4.6.0/i18n/grid.locale-en.js" ></script>
    <script src="//cdn.jsdelivr.net/jqgrid/4.6.0/jquery.jqGrid.src.js"></script>
    <script src="//cdn.jsdelivr.net/jqgrid/4.6.0/plugins/grid.addons.js"></script>
    <script src="//cdn.jsdelivr.net/jqgrid/4.6.0/plugins/grid.postext.js"></script>
    <script src="//cdn.jsdelivr.net/jqgrid/4.6.0/plugins/grid.setcolumns.js"></script>
    <script src="//cdn.jsdelivr.net/jqgrid/4.6.0/plugins/jquery.contextmenu.js"></script>
    <script src="//cdn.jsdelivr.net/jqgrid/4.6.0/plugins/jquery.searchFilter.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jqgrid/4.6.0/js/jquery.jqGrid.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jqgrid/4.6.0/js/i18n/grid.locale-en.js"></script>



    <title>View Page</title>
    <style>

    </style>
</head>
<script>
    $(document).ready(function(){
        $("#list2").jqGrid({
            url:'sampleController.htm?action=Listtable',
            datatype: "json",
            mtype: "GET",
            jsonReader: {root:"result"},
            colNames:['name','email','mobileNumber','createPassword','confirmPassword'],
            colModel:[

                {name:'name',index:'name',search :true,label :'User',width:50, sortable:true, editable:true, editoptions:{editable:true,size:10},editrules:{required:true}},
                {name:'email',index:'email', width:50,sortable:true, editable:true, editoptions:{editable:true,size:10},editrules:{required:true} },
                {name:'mobileNumber',index:'mobileNumber',search : true ,label :'User',width:50, sortable:true, editable:true, editoptions:{editable:true,size:10},editrules:{required:true} },
                {name:'createPassword',index:'createPassword',search :true,label :'User',width:50, sortable:true, editable:true, editoptions:{editable:true,size:10},editrules:{required:true}},
                {name:'confirmPassword',index:'confirmPassword',search : true ,label :'User',width:50, sortable:true, editable:true, editoptions:{editable:true,size:10},editrules:{required:true} },

            ],
            rowNum:20,
            rowList:[10,20,30],
            pager: jQuery('#pager2'),
            height: "auto",
            width: 700,
            ignoreCase: true,
            sortname: 'name',
            viewrecords: true,
            sortorder: "desc",
            caption:"Sales Agent"

        });
        jQuery("#list2").jqGrid('navGrid','#pager2',{
                    edit : true,
                    add : false,
                    del : true,
                    search : false},
                {
                    editCaption:"Edit User",
                    url:'sampleController.htm?action=update1',
                    closeAfterEdit: true
                },
                {

                    addCaption:"Add User",
                    url:'sampleController.htm?action=showregister',
                    closeAfterAdd:true
                },

                {

                    mtype: 'GET',
                    url: 'sampleController.htm',
                    onclickSubmit: function (options, rowid) {
                        var rowData = jQuery(this).jqGrid('getRowData', rowid);
                        return {
                            action: 'delete',
                            email: rowData.email
                        };
                    }
                }



        );

    });


</script>
<body>

<table id="list2">
</table>

<div id="pager2">

</div>
<img src="add.jpeg" alt="add" style="width:20px;height:18px;margin-top:2px;" onClick="window.location.href='sampleController.htm?action=showregister';"/>

<center><input type="submit" value="Logout" onClick="window.location.href='sampleController.htm?action=logout';"></center></body>


</html>