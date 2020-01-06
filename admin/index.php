<?php 
require_once('../Connections/neticketing.php'); 
session_start();
		if (isset($_POST['inputEmail'],$_POST['inputPassword']))
			   {
                $user_email=$_POST['inputEmail'];
                $password=$_POST['inputPassword'];
  
                   if (empty($user_email) || empty($password))
                   {
                      $error = 'Hey All fields are required!!';
                    }
                     
					 else {  
					 $login="select * from user_info where user_email='".$user_email."' and user_password ='".$password."'";
					 $result=mysql_query($login,$conn);
					 
				
					 
					if(mysql_fetch_array($result)){
				 $_SESSION['logged_in']='true';
				 session_start();
				 $_SESSION['user_email']=$user_email;
					 header('Location:dashboard.php');
					 exit();
					 } else {
					 $error='Incorrect details !!';
					 }
					       }
		}
  



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
                        <form ACTION="index.php" METHOD="POST" name="myLoginForm" class="form-horizontal">
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
