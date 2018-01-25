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

    <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/jquery.validation/1.15.0/jquery.validate.min.js"></script>
    <script src="https://cdn.jsdelivr.net/jquery.validation/1.15.0/additional-methods.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">


    <link rel='stylesheet prefetch' href='https://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css'>

    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <script src='https://ajax.googleapis.com/ajax/libs/angularjs/1.0.7/angular.min.js'></script>
    <script>
        history.forward();
    </script>

    <script>
        $(document).ready(function()
        {
            var validator = $("form[id='demo']").validate(
                    {

                rules:
                {

                    email:
                    {
                        required: true,

                    },
                    passwords:
                    {
                        required: true,
                    }
                },
                messages:
                {

                    email:
                    {
                        required: "Please enter your firstname",

                    },

                    passwords:
                    {
                        required: "Please enter your Password",

                    }
                }
            });
        }
        );

</script>
    <style>
        .form-style-7{
            max-width:400px;
            margin:50px auto;
            background:#fff;
            border-radius:2px;
            padding:20px;
            font-family: Georgia, "Times New Roman", Times, serif;
        }
        .form-style-7 h1{
            display: block;
            text-align: center;
            padding: 0;
            margin: 0px 0px 20px 0px;
            color: #5C5C5C;
            font-size:x-large;
        }
        .form-style-7 ul{
            list-style:none;
            padding:0;
            margin:0;
        }
        .form-style-7 li{
            display: block;
            padding: 9px;
            border:1px solid #DDDDDD;
            margin-bottom: 30px;
            border-radius: 3px;
        }
        .form-style-7 li:last-child{
            border:none;
            margin-bottom: 0px;
            text-align: center;
        }
        .form-style-7 li > label{
            display: block;
            float: left;
            margin-top: -19px;
            background: #FFFFFF;
            height: 14px;
            padding: 2px 5px 2px 5px;
            color: #B9B9B9;
            font-size: 14px;
            overflow: hidden;
            font-family: Arial, Helvetica, sans-serif;
        }
        .form-style-7 input[type="text"],
        .form-style-7 input[type="date"],
        .form-style-7 input[type="datetime"],
        .form-style-7 input[type="email"],
        .form-style-7 input[type="number"],
        .form-style-7 input[type="search"],
        .form-style-7 input[type="time"],
        .form-style-7 input[type="url"],
        .form-style-7 input[type="password"],
        .form-style-7 textarea,
        .form-style-7 select
        {
            box-sizing: border-box;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            width: 100%;
            display: block;
            outline: none;
            border: none;
            height: 25px;
            line-height: 25px;
            font-size: 16px;
            padding: 0;
            font-family: Georgia, "Times New Roman", Times, serif;
        }
        .form-style-7 input[type="text"]:focus,
        .form-style-7 input[type="date"]:focus,
        .form-style-7 input[type="datetime"]:focus,
        .form-style-7 input[type="email"]:focus,
        .form-style-7 input[type="number"]:focus,
        .form-style-7 input[type="search"]:focus,
        .form-style-7 input[type="time"]:focus,
        .form-style-7 input[type="url"]:focus,
        .form-style-7 input[type="password"]:focus,
        .form-style-7 textarea:focus,
        .form-style-7 select:focus
        {
        }
        .form-style-7 li > span{
            background: #F3F3F3;
            display: block;
            padding: 3px;
            margin: 0 -9px -9px -9px;
            text-align: center;
            color: #C0C0C0;
            font-family: Arial, Helvetica, sans-serif;
            font-size: 11px;
        }
        .form-style-7 textarea{
            resize:none;
        }
        .form-style-7 input[type="submit"],
        .form-style-7 input[type="button"]{
            background: #2471FF;
            border: none;
            padding: 10px 20px 10px 20px;
            border-bottom: 3px solid #5994FF;
            border-radius: 3px;
            color: #D2E2FF;
        }
        .form-style-7 input[type="submit"]:hover,
        .form-style-7 input[type="button"]:hover{
            background: #6B9FFF;
            color:#fff;
        }
        </style>

    <script>
        function adjust_textarea(h) {
            h.style.height = "20px";
            h.style.height = (h.scrollHeight)+"px";
        }
    </script>
</head>
<body>

<center><form id="demo"method="post" class="form-style-7" action="sampleController.htm?action=login">

    <label> <h3>Login Page</h3></label>
    <ul>
        <li>
            <%--@declare id="name"--%><label for="name">Email Id</label>
            <input type="text" name="email"autocomplete="off" style="color: black"class="mytext">
            <span>Enter a valid email address</span>
        </li>
        <li>
            <%--@declare id="email"--%><label for="email">Password</label>
        <input type="password"name="createPassword" autocomplete="off"style="color: black" class="mytext">
                <span>Enter your password</span>
        </li>
        <li>
            <a href="forgotPassword.jsp">Forgot Password</a>

        </li>
        <li>
            <input type="button" value="SignUp" onClick="window.location.href='sampleController.htm?action=showregister'"  />
            <input type="submit"  value="SignIn"   />
        </li>
    </ul>


   </form></center>


</body>
</html>

