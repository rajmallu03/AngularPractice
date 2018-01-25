
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <link rel="stylesheet" href="resources/screen1/styles/login.css">

    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>

    <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/jquery.validation/1.15.0/jquery.validate.min.js"></script>
    <script src="https://cdn.jsdelivr.net/jquery.validation/1.15.0/additional-methods.min.js"></script>

    <script LANGUAGE="JavaScript">
        function getParams(){
            var idx = document.URL.indexOf('?');
            var params = new Array();
            if (idx != -1) {
                var pairs = document.URL.substring(idx+1, document.URL.length).split('&');
                for (var i=0; i<pairs.length; i++){
                    nameVal = pairs[i].split('=');
                    params[nameVal[0]] = nameVal[1];
                }
            }
            return params;
        }
        params = getParams();
        email = unescape(params["email"]);
    </script></head>
<script type="text/javascript">
    $(document).ready(function() {
        var validator = $("form[id='demo1']").validate(
                {

                    rules: {


                        passwords: {
                            required: true,
                        },
                        passwords1: {
                            required: true,
                            equalTo: "#txtPassword",


                        }

                    },
                    messages: {

                        passwords: {
                            required: "Please enter your password",

                        }, passwords1: {
                            required: "Please enter your password",

                        }

                    }

                });
        $(function () {
            $("#btnSubmit").click(function () {
                var password = $("#txtPassword").val();
                var confirmPassword = $("#txtConfirmPassword").val();
                if (password != confirmPassword) {
                    alert("Passwords do not match.");
                    return false;
                }
                return true;
            });    });
    });

</script>





<body class="align">

<div class="grid">

    <form id="demo1" method="post" class="form login"action="sampleController.htm?action=update2">

        <header class="login__header">
            <h3 class="login__title">Reset password</h3>
        </header>

        <div class="login__body">
            <input type="hidden" name="email" id="email"  value= <%= request.getParameter("email") %>><br/>
            <div class="form__field">
                <input type="password" id="txtPassword" placeholder="password" name="createPassword" required ;>
            </div>

            <div class="form__field">
                <input type="password" id="txtConfirmPassword" placeholder="ConfirmPassword" name="createPassword1" required;>
            </div>

        </div>

        <footer class="login__footer">
            <input type="submit" value="Submit">

        </footer>

    </form>

</div>

</body>

</html>

