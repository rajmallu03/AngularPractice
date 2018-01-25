<%--
  Created by IntelliJ IDEA.
  User: system48
  Date: 10/13/2017
  Time: 12:09 PM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html >
<head>
    <meta charset="UTF-8">
    <title>Login</title>




    <link rel="stylesheet" href="resources/screen1/styles/login.css">
    <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/jquery.validation/1.15.0/jquery.validate.min.js"></script>
    <script src="https://cdn.jsdelivr.net/jquery.validation/1.15.0/additional-methods.min.js"></script>
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

<body>
<body class="align">

<div class="grid">

    <form  name=""method="post" class="form login"action="sampleController.htm?action=sendEmail">

        <header class="login__header">
            <h3 class="login__title">Sendmail</h3>
        </header>

        <div class="login__body">

            <div class="form__field">
                <input type="email" name="email"placeholder="Email" required>
            </div>

        </div>

        <footer class="login__footer">
            <input type="submit" value="sendmail">


        </footer>

    </form>
    <div class=validation> <p>${Data5}</p></div>
</div>
</body>


</body>
</html>
