
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@page session="true"%>
<html>
<head>
    <title>forgot password</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="resources/screen1/styles/forgotPassword_style.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script>
        $(document).ready(function()
            {
                var validator = $("form[id='demo']").validate(
                    {

                        rules: {

                            email: {
                                required: true,

                            }
                        },
                        messages:
                            {

                                email:
                                    {
                                        required: "Please enter your firstname",

                                    }


                            }
                    });
            }
        );

    </script>


</head>
<body onload='document.loginForm.username.focus();'>
<%--<jsp:include page="menu.jsp"/>--%>


<div id="login-box">

    <form name="" action="sampleController.htm?action=sendEmail" class="login" method='POST'>

        <center><p>Forget Password</p></center>
        <hr>
        <ul>
            <li>

                <input type='text' name='mail' value='' placeholder="Mail Id">

            </li>

            <c:if test="${not empty error}">
                <div class="error">${error}</div>
            </c:if>
            <c:if test="${not empty msg}">
                <div class="msg">${msg}</div>
            </c:if>
            <li>
                <input name="submit" type="submit" value="SEND PASSWORD" />
            </li>

        </ul>

        <input type="hidden" name="${_csrf.parameterName}"
               value="${_csrf.token}" />

    </form>
    <div class=validation> <p>${Data5}</p></div>
</div>

</body>
</html>