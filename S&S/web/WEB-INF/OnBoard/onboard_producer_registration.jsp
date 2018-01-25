
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@page session="true"%>
<html>
<head>
    <title>Add a Producer</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="resources/screen1/styles/onboard_style.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script>
        function TextChanged(){
            var theatre =  document.getElementById("theatre").value;
            var state =  document.getElementById("state").value;
            var city =  document.getElementById("city").value;
            var zip =  document.getElementById("zip").value;
            var theatre_type =  document.getElementById("theatre_type").value;
            var theatre_types =  document.getElementById("theatre_types").value;

            document.getElementById("id").value =  theatre.substring(0, 3) +state.substring(0, 3) +city.substring(0, 2)+zip.substring(0, 2)
                +theatre_type.substring(0, 1)+theatre_types.substring(0, 1);
            document.getElementById("USC").value =  theatre.substring(0, 3) +state.substring(0, 3) +city.substring(0, 2)+zip.substring(0, 2)
                +theatre_type.substring(0, 1)+theatre_types.substring(0, 1);

        }



    </script>

</head>
<body>
<%--<jsp:include page="menu.jsp"/>--%>


<div id="login-box">




    <form name='loginForm' method='POST' action="sampleController.htm?action=onboards" class="login">
        <center><p>ONBOARD PRODUCER</p></center>
        <hr>

        <table border="0" align="center">
            <tbody>
            <tr>

                <td><label for="category" style="display:none">category:</label></td>
                <td><input id="category" maxlength="10" type="text" name="category" style="width: 300px; display: none" value="Producer"/></td>
            </tr>

            <tr>
                <td><label for="theatre">Theatre Name: </label></td>
                <td><input id="theatre" maxlength="70" name="theatre" type="text" style="width: 300px;" onblur="TextChanged()"/></td>
            </tr>

            <tr>
                <td><%--@declare id="address"--%><label for="address">Address: </label></td>
                <td valign="middle"><textarea style="width: 300px;" name="address"></textarea>
            </tr>

            <tr>
                <td><%--@declare id="country"--%><label for="country">Country: </label></td>
                <td><select style="width: 300px;" name="country">
                    <option value="india">India</option>

                </select></td>
            </tr>

            <tr>
                <td><label for="state">State: </label></td>
                <td><input id="state" maxlength="50" name="state" type="text" style="width: 300px;" onblur="TextChanged()"/></td>
            </tr>

            <tr>
                <td><label for="city">City: </label></td>
                <td><input id="city" maxlength="50" name="city" type="text" style="width: 300px;" onblur="TextChanged()"/></td>
            </tr>

            <tr>
                <td><label for="zip">Zip:</label></td>
                <td><input id="zip" maxlength="50" name="zip" type="text" style="width: 300px;" onblur="TextChanged()"/></td>
            </tr>

            <tr>
                <td><label for="theatre_type">Theatre Type:</label></td>
                <td><input id="theatre_type" maxlength="50" name="types" type="radio" value="single" onblur="TextChanged()"/>Single
                    <input id="theatre_types" maxlength="50" name="types" type="radio" value="multiple" onblur="TextChanged()"/>Multiple</td>
            </tr>

            <tr>
                <td><label for="screen">Screen Count:</label></td>
                <td><input id="screen" maxlength="50" name="counts" type="text" style="width: 300px;"/></td>
            </tr>

            <tr>
                <td><label for="ticket">Ticket Price(  ):</label></td>
                <td><input id="ticket" maxlength="50" name="cost" type="text" style="width: 300px;"/></td>
            </tr>

            <tr>
                <td><label for="email">Email:</label></td>
                <td><input id="email" maxlength="50" name="email" type="email" style="width: 300px;"/></td>
            </tr>

            <tr>

                <td><label for="number">Mobile:</label></td>
                <td><input id="number" maxlength="10" type="text" name="mobile" style="width: 300px;"/></td>
            </tr>

            <tr>

                <td><label for="ID" style="display:none">ID:</label></td>
                <td><input id="USC" type="text" name="USC" style="width: 300px; display: none"/></td>
            </tr>




            </tbody>
        </table>
        <%--<center>  <a class="nav-link" data-toggle="modal" data-target="#exampleModal"><button class="button button"  id="generate">Submit</button></a>
        <button class="button button2">Cancel</button></center>
--%>


      <%--  <input name="submit" type="submit" value="SUBMIT" class="button" onClick="window.location.href='sampleController.htm?action=producer'"/>
        --%><input name="cancel" type="submit" class="button2" value="CANCEL"/>
        <a class="nav-link" data-toggle="modal" data-target="#exampleModal">
            <input name="cancel" type="button" class="button2"  value="SUBMIT"/></a>
</div>
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <center><h5 class="modal-title" id="exampleModalLabel"><b>Thank You for your time!!</b></h5></center>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true"><i class="fa fa-sign-out" aria-hidden="true"></i></span>
                </button>
            </div>
            <center><div class="modal-body">Your Permanent Unique Screen Code has been generated!<br>Your Unique Screen code is <br><input id="id" type="text" name="id" style="width: 300px; text-align:center; border: none; color:#c7254e; font-size: 22px; font-weight: bold;" readonly/><br>
                Please mention the <b>USC</b> in all future communications!<br>
                <span style="color: #ff0000"><b>Do you want to continue the Onboarding process?</b></span>
            </div></center>
            <div class="modal-footer">

                    <input type="submit" class="btn btn-primary" value="Yes" onClick="window.location.href='sampleController.htm?action=aboutTheatre_pr'"/>
                <a class="btn btn-secondary" data-dismiss="modal" href="login.html">No</a>
            </div>
        </div>
    </div>
</div>
</form>

</body>
</html>