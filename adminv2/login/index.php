<?php
/**
 * Created by PhpStorm.
 * user: Kevin
 * Date: 9/1/2018
 * Time: 6:18 PM
 */

?>
<html lang="en">
<head>
    <title>Login V3</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="../img/icons/favicon.ico"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../js/bootstrap.min.js">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../assets/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../assets/fonts/iconic/css/material-design-iconic-font.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../css/util.css">
    <link rel="stylesheet" type="text/css" href="../css/login.css">
    <!--===============================================================================================-->
</head>
<body>

<div class="limiter">
    <div class="container-login100" style="background-image: url('../img/bg-01.jpg');">
        <div class="wrap-login100">
            <form id="formLogin" class="login100-form validate-form">
					<span class="login100-form-logo">
						<i class="zmdi zmdi-landscape"></i>
					</span>

                <span class="login100-form-title p-b-34 p-t-27">
						Log in
					</span>

                <div class="wrap-input100 validate-input" data-validate = "Enter username">
                    <input class="input100" type="text" required name="username" placeholder="Username" id="user">
                    <span class="focus-input100" data-placeholder="&#xf207;"></span>
                </div>

                <div class="wrap-input100 validate-input" data-validate="Enter password">
                    <input class="input100" type="password" required name="pass" placeholder="Password" id="pass">
                    <span class="focus-input100" data-placeholder="&#xf191;"></span>
                </div>

                <div class="contact100-form-checkbox">
                    <input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me" disabled>
                    <label class="label-checkbox100" for="ckb1">
                        Remember me
                    </label>
                </div>

                <div class="container-login100-form-btn">
                    <button type="button" id="btnLogin" class="login100-form-btn">
                        Login
                    </button>
                </div>

                <div class="text-center p-t-90">
                    <a class="txt1" href="#">
                        Forgot Password? - Contact admin at info@digitalstudents.com
                    </a>
                </div>
            </form>
        </div>
    </div>
</div>


<div id="dropDownSelect1"></div>

<!--===============================================================================================-->
<script src="../js/jquery-1.10.2.js"></script>
<!--===============================================================================================-->
<script src="../js/login.js"></script>

<script>
    $(document).ready(function() {

    })

    $("#btnLogin").on("click", function() {
        var user = $("#user").val();
        var pass = $("#pass").val();

        $.ajax({
            url: "posthandler.php",
            type: "POST",
            data: {
                user: user,
                pass: pass,
                action: "login"
            }, success: function(result) {
                var data = JSON.parse(result);
                if(data.success) {
                    window.location = data.redirectUrl;
                } else {
                    // Give error message about wrong credentials
                }
            }
        });
    })
</script>

</body>
</html>
