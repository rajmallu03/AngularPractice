<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@page session="true"%>
<html>
<head>
    <title>Login Page</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="resources/screen1/styles/user_creation_style.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body onload='document.loginForm.username.focus();'>
<%--<jsp:include page="menu.jsp"/>--%>


<div id="login-box">




    <form name='loginForm' action="<c:url value=${pageContext.request.contextPath}/j_spring_security_check />" class="login" method='POST'>

        <p>LOGIN<i class="fa fa-lock" id="indent" aria-hidden="true"></i></p>

        <hr>
        <ul>
            <li>

                <input type='text' name='username' value='' placeholder="Username">

            </li>
            <li>

                <input type='password' name='password' placeholder="Password"/>

            </li>
            <c:if test="${not empty error}">
                <div class="error">${error}</div>
            </c:if>
            <c:if test="${not empty msg}">
                <div class="msg">${msg}</div>
            </c:if>
            <li>
                <input name="submit" type="submit" value="LOGIN" />
            </li>

        </ul>
        <a href="sampleController.htm?action=showemail"><h5>Forgot Password?</h5></a>


        <input type="hidden" name="${_csrf.parameterName}"
               value="${_csrf.token}" />

    </form>
    <div class="vr">&nbsp;</div>
    <form name='loginForm'
          action="<c:url value=${pageContext.request.contextPath}/j_spring_security_check />" class="login2" method='POST'>

        <p id="icon">LOGIN<i class="fa fa-lock" id="indent2" aria-hidden="true"></i></p>

        <hr>
        <ul>
            <li>

                <select name="users">
                    <option value="Exhibitors">Exhibitors</option>
                    <option value="Producers">Producers</option>
                    <option value="Entrepreneurs">Entrepreneurs</option>
                </select>

            </li>
            <li>

                <input type='email' name='mail' placeholder="Enter Mail Id"/>

            </li>


            <li>
                <input name="submit" type="submit" value="REQUEST OTP" />
            </li>
        </ul>



        <input type="hidden" name="${_csrf.parameterName}"
               value="${_csrf.token}" />

    </form>
   <center><form name='loginForm' action="<c:url value=${pageContext.request.contextPath}/j_spring_security_check />" class="login2" method='POST'>

        <ul>

            <li>

                <input type='text' name='otp' placeholder="Enter OTP"/>

            </li>


            <li>
                <input name="submit" type="submit" value="VERIFY OTP" />
            </li>
        </ul>



        <input type="hidden" name="${_csrf.parameterName}"
               value="${_csrf.token}" />

</form></center>

</div>

</body>
</html>