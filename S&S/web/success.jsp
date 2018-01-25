
<%--
  Created by IntelliJ IDEA.
  User: Jerold Joel
  Date: 8/18/2017
  Time: 9:49 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script>
        history.forward();
    </script>
    <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>View Page</title>
    <style>
        table, td {
            border: 2px solid #000;
            text-align: left;
        }

        table {
            border-collapse: collapse;
            width: 60%;
        }

        td {
            padding: 15px;
        }


    </style>
    <script>
        $( document ).ready(function(){

            $.ajax({
                url:'sampleController.htm?action=Listtable',
                type: "GET",
                async: false,
                cache: false,
                response: {},
                dataType: 'json',
                success: function (response)

                {
                    var data=response.result;

                    for(var i=0;i<=data.length;i++){
                        $("#table").append("<tr><td>" + data[i].name + "</td><td>" +data[i].email + "</td><td>" +data[i].mobileNumber + "</td>" +
                                "<td>" +data[i].createPassword + "</td><td>" +data[i].confirmPassword + "</td><td><input type=submit value=edit style=width:60 onClick=window.location.href='sampleController.htm?action=update'><br><input type=submit value=Delete style=width:60;></td></tr>");

                    }

                }
            });


        });
    </script>
</head>
<body>
<center><table id="table">

<tbody>
    <tr>
        <th><b>Name</b></th>
        <th><b>Email</b></th>
        <th><b>MobileNumber</b></th>
        <th><b>CreatePassword</b></th>
        <th><b>ConfirmPassword</b></th>
        <th><img src="add.jpeg" alt="add" style="width:30px;height:28px;margin-left: 59px" onClick="window.location.href='sampleController.htm?action=logout';"/>
        </th>
    </tr>




    </tbody>

</table></center>
<br>
<input type="submit" value="Add"name="add" style="width: 80px; height:30px;margin-left:540px;margin-top:10px"; onClick="window.location.href='sampleController.htm?action=showregister';"/>



</body>
</html>
