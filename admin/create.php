<?php require_once('../Connections/neticketing.php'); ?>
<?php
if (!isset($_SESSION)) {
    session_start();
}
if (isset($_SESSION['user_email'])) {
    ?>



    <!-------------------Banner START---------------------->
    <?php include('include/banner.php'); ?>
    <!-------------------Banner END----------------------> 
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
            $placeholder = "create";
            include('include/header.php');
            ?>
            <!-------------------HEADER END----------------------> 

            <!-------------------BODY START---------------------->
            <style type="text/css">
                .account_body{
                    font-size:14px;
                }
                .table td{padding-left: 4px;}
                th {text-align:left;padding-left: 5px; }
                .table .home{background:#fff; }
            </style>

            <div id="signup_body" class="account_body" style="padding-top:  0px;">
                <div id="tabs"> 

                    <!--main menu-->
                    <?php include('include/navigation.php'); ?>
                    <!--main menu--> 

                </div>
                <!-- DIV start for Dashboard -->

                <div id="dashboard" style="margin-top: 30px; ">
                    <div>
                        <div>
                            <div id="trainroute" style="margin-top: 30px;">
                                <div id="train_route_div">
                                    <form ACTION="model/create.php" METHOD="POST" name="myLoginForm" class="form-horizontal">
                                        <fieldset>
                                            <legend>Add New Launch</legend>
                                            <div class="control-group">
                                                <label class="control-label" for="launch_id">Launch Id</label>
                                                <div class="controls">
                                                    <input type="text" name="launch_id" id="launch_id" value="MV-<?php echo uniqid();?>"
                                                           disabled="">
                                                </div>
                                            </div>
                                            <div class="control-group">
                                                <label class="control-label" for="launch_name">Launch Name</label>
                                                <div class="controls">
                                                    <input type="text" name="launch_name" id="launch_name" value=""
                                                           required>
                                                </div>
                                            </div>
                                            <div class="control-group">
                                                <label class="control-label" for="source">Source</label>
                                                <div class="controls">
                                                    <input type="text" name="source" id="source" value=""
                                                           required>
                                                </div>
                                            </div>
                                            <div class="control-group">
                                                <label class="control-label" for="destination">Destination</label>
                                                <div class="controls">
                                                    <input type="text" name="destination" id="destination" value=""
                                                           required>
                                                </div>
                                            </div>
                                            <div class="control-group">
                                                <label class="control-label" for="dept_time">Departure Time</label>
                                                <div class="controls">
                                                    <input type="text" name="dept_time" id="dept_time" value=""
                                                           required>
                                                </div>
                                            </div>
                                            
                                            <div class="control-group">
                                                <div class="controls">					
                                                    <input type="submit" name="Save" value="Save" class="btn"></button><p></P>
                                                    <!--<p>Don't Have an Account?<a href="registration.php"> Sign Up Here</a></p>-->  
                                                </div>
                                            </div>
                                        </fieldset>
                                    </form>
                                </div>
                            </div>
                        </div>

                    </div>
                    <br/>
                </div>

                <!-- DIV end for Dashboard --> 


                <div class="title_home">
                    <font style="padding-left: 10px; font-family: arial; font-size: 16px; font-weight: bold; color: #000; text-align: center">

                    </font>
                </div>
                <div id="dashboard" style="margin-top: 30px; ">

                    <div>
                        <div>
                            <div id="trainroute" style="margin-top: 30px;">
                                <div id="train_route_div">
                                    <form ACTION="model/create.php" METHOD="POST" name="myLoginForm" class="form-horizontal">
                                        <fieldset>
                                            <legend>Add Seat Category</legend>
                                            <div class="control-group">
                                                <label class="control-label" for="launch_id">Launch ID</label>
                                                <div class="controls">
                                                    <input type="text" name="launch_id" id="launch_id" value=""
                                                           required>
                                                </div>
                                            </div>
                                            <div class="control-group">
                                                <label class="control-label" for="catagory_name">Category Name</label>
                                                <div class="controls">
                                                    <input type="text" name="catagory_name" id="catagory_name" value=""
                                                           required>
                                                </div>
                                            </div>
                                            <div class="control-group">
                                                <label class="control-label" for="price">Price</label>
                                                <div class="controls">
                                                    <input type="text" name="price" id="price" value=""
                                                           required>
                                                </div>
                                            </div>
                                            <div class="control-group">
                                                <label class="control-label" for="capacity_amount">Capacity Amount</label>
                                                <div class="controls">
                                                    <input type="text" name="capacity_amount" id="capacity_amount"
                                                           value="" required>
                                                </div>
                                            </div>
                                            <input type="hidden" name="catagory_id" value=""/>
                                            <input type="hidden" name="flag" value="1"/>
                                            
                                            <div class="control-group">
                                                <div class="controls">					
                                                    <input type="submit" name="adminLogin" value="Update" class="btn"><p></P>
                                                    <!--<p>Don't Have an Account?<a href="registration.php"> Sign Up Here</a></p>-->  
                                                </div>
                                            </div>
                                        </fieldset>
                                    </form>
                                </div>
                            </div>
                        </div>

                    </div>
                    <br/>
                </div>
            </div>
            <!-------------------BODY START----------------------> 
            <!-------------------FOOTER START-------------------->
            <?php include('include/footer.php'); ?>
            <!-------------------FOOTER END---------------------->
        </body>
    </html>
    <?php
} else {
    header("Location:http://localhost/nTicketing-master/neticketing-m/admin/");
}
?>