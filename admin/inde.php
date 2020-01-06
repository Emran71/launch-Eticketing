<?php 
require_once('../Connections/neticketing.php'); 

//if (!isset($_SESSION)) {
  //  session_start();
/}

if (!isset($_SESSION['user_email'])) {

?>


<!DOCTYPE html>
<html>
    <head>
        <title>Login page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="css/main_style.css" media="screen" rel="stylesheet"
              type="text/css">
        <link href="images/favicon.ico" rel="icon" type="image/icon" />
    </head>
    <body>
        <!-------------------HEADER START---------------------->
        <?php
        $placeholder = "login";
        include('include/header.php');
        ?>
        <!-------------------HEADER END----------------------> 

        <!-------------------BODY START---------------------->
        <div id="signup_body" class="account_body" style="padding-top: 0px;">
            <div id="tabs">
                <!--main menu-->
                <?php include('include/navigation.php'); ?>
                <!--main menu-->

                <!-- DIV start for Dashboard -->
                <div id="trainroute" style="margin-top: 30px;">
                    <div id="train_route_div">
                        <form ACTION="model/adminLogin.php" METHOD="POST" name="myLoginForm" class="form-horizontal">
                            <fieldset>
                                <legend>Admin Login Form</legend>
                                <div class="control-group">
                                    <label class="control-label" for="inputEmail">Email</label>
                                    <div class="controls">
                                        <input type="email" name="inputEmail" id="inputEmail" placeholder="Email"
                                               required>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="inputPassword">Password</label>
                                    <div class="controls">
                                        <input type="password" name="inputPassword" id="inputPassword"
                                               placeholder="Password" required>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <div class="controls">					
                                        <input type="submit" name="adminLogin" class="btn"></button><p></P>
                                        <!--<p>Don't Have an Account?<a href="registration.php"> Sign Up Here</a></p>-->  
                                    </div>
                                </div>
                            </fieldset>
                        </form>
                    </div>
                </div>
                <!-- DIV end for Dashboard -->
            </div>
        </div>

        <!-------------------FOOTER START---------------------->
        <?php include('include/footer.php'); ?>
        <!-------------------FOOTER END---------------------->
    </body>
</html>
<?php 
}  
else {
    header("Location:http://localhost/nTicketing-master/neticketing/admin/dashboard.php");
}
?>