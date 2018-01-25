
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@page session="true"%>
<html>
<head>
    <title>Sales Agent Registration</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="resources/screen1/styles/salesAgent_registration.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

            </head>
<body>
<div id="login-box">

    <form name="loginForm"  method="POST" action="sampleController.htm?action=register" class="login">

        <center><p>ADD SALES AGENT</p></center>
        <hr>
        <ul>
            <h4>Name</h4><li><input type='text' name='name' value='' placeholder="Name" required/>
        </li>
            <h4>Email Id</h4><li><input type='text' name='email' value='' placeholder="Email Id" required/>
        </li>
            <h4>Mobile Number</h4><li><input type='text' name='mobileNumber' value='' placeholder="Mobile" required/>
        </li>
            <h4>Create Password</h4><li><input type='password' name='createPassword' value='' placeholder="Create Password" required/>
        </li>
            <h4>Confirm Password</h4><li><input type='password' name='confirmPassword' value='' placeholder="Confirm Password" required/>
        </li>
            <li>
                <div id="btn1"><input name="submit" type="submit" value="SUBMIT" class="save" onClick="window.location.href='sampleController.htm?action=salesAgent'"/></div>

                <input name="cancel" type="submit" value="CANCEL"/>
            </li>

        </ul>


    </form>
</div>

</body>
</html>