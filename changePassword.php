<?php require_once('Connections/neticketing.php'); ?>
<?php
if (!isset($_SESSION)) {
    session_start();
    $userEmail = $_SESSION['user_email'];
}

if (isset($_SESSION['passMsg']) && !empty($_SESSION['passMsg'])) {
    ?>
    <script>alert("<?php echo $_SESSION['passMsg']; ?>");</script>
    <?php
}
?>
<html>
    <head>
        <title>Password Change page</title>
        <meta name="viewport" content="width = device-width, initial-scale = 1.0">
        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="css/main_style.css" media="screen" rel="stylesheet"
              type="text/css">
        <link href="images/favicon.ico" rel="icon" type="image/icon" />
        <!-------------------Banner START---------------------->
        <?php
        $placeholder = "changePassword";
        include('include/banner.php');
        ?>
        <!-------------------Banner END----------------------> 
    </head>
    <body>
        <!-------------------HEADER START---------------------->
        <?php include('include/header.php'); ?>
        <!-------------------HEADER END----------------------> 

        <!-------------------BODY START---------------------->
        <div id="signup_body" class="account_body" style="padding-top: 0px;
             ">
            <div id="tabs"> 
                <!--main menu-->
                <?php include('include/navigation.php'); ?>
                <!--main menu--> 

                <!-- DIV start for Dashboard -->
                <div id="trainroute" style="margin-top: 30px;
                     ">
                    <div id="train_route_div">
                        <form ACTION="passwordChanged.php" METHOD="POST" name="myLoginForm" class="form-horizontal">
                            <fieldset>
                                <legend>Change Password</legend>
                                <div class="control-group">
                                    <label class="control-label" for="currPassword">Current Password</label>
                                    <div class="controls">
                                        <input type="password" name="currPassword" id="currPassword" placeholder="Current Password"
                                               required>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="inputPassword">New Password</label>
                                    <div class="controls">
                                        <input type="password" name="inputPassword" id="inputPassword"
                                               placeholder="New Password" required>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="confirmPassword">Confirm Password</label>
                                    <div class="controls">
                                        <input type="password" name="confirmPassword" id="confirmPassword"
                                               placeholder="Confirm Password" required>
                                    </div>
                                </div>
                                <input type="hidden" name="userEmail" value="<?php echo $userEmail; ?>"/>
                                <div class="control-group">
                                    <div class="controls">					
                                        <input type="submit" value="Save" class="btn"></button><p></P>
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
