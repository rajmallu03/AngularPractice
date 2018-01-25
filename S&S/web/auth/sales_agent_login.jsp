
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@page session="true"%>
<html>
<head>
    <title>Login Page</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="resources/screen1/styles/admin_login_style.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body onload='document.loginForm.username.focus();'>
<%--<jsp:include page="menu.jsp"/>--%>


<div id="login-box">
    <form name='loginForm' action="<c:url value=${pageContext.request.contextPath}/j_spring_security_check />" class="login" method='POST'>

        <center><p>SALES AGENT LOGIN</p></center>
        <hr>
        <ul>
            <li>

                <input type='text' name='email' value='' placeholder="Email Id">

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

        <input type="hidden" name="${_csrf.parameterName}"
               value="${_csrf.token}" />

    </form>
</div>

</body>
</html>