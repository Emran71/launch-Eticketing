<?php require_once('neticketing.php'); ?>
<?php
if (!isset($_SESSION)) {
session_start();
$user_email=$_SESSION['user_email'];
$_SESSION['user_email']=$user_email;
}


$query = "SELECT * FROM launch_info WHERE deleted = '0'";
$result = mysql_query($query,$conn);
while ($row = mysql_fetch_assoc($result)) {
    $allLaunchInfo[] = $row;
}
?>



<!-------------------Banner START---------------------->
<?php include('include/banner.php'); ?>
<!-------------------Banner END----------------------> 

<body>
    <!-------------------HEADER START---------------------->
    <?php
    $placeholder = "dashboard";
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
            <?php include_once 'include/navigation.php'; ?>
            <!--main menu--> 

        </div>
        <!-- DIV start for Dashboard -->
        <div id="dashboard" style="margin-top: 30px; ">
            <div>
                <div class="title_home">
                    <font style="padding-left: 10px; font-family: arial; font-size: 16px; font-weight: bold; color: #000; ">
                    All Launch Information
                    </font>
                </div>
                <table  class="table" style="box-shadow:0px 0px 16px #000000;">
                    <tr style="font-weight: bold;text-align: center; background: #6c1d4c; color: #ffffff">
                        <td>Serial No</td>
                        <td>Launch ID</td>
                        <td>launch Name</td>
                        <td>Source</td>
                        <td>Destination</td>
                        <td>Departure Time</td>
                        <td>Action</td>
                    </tr>
                    <?php
                    $count = 1;
                    foreach ($allLaunchInfo as $value) {
                        ?>
                        <tr bgcolor="#FFF" align="center" >
                            <td><?php echo $count; ?></td>
                            <td><?php echo $value['launch_id']; ?></td>
                            <td><?php echo $value['launch_name'] ?></td>
                            <td><?php echo $value['source'] ?></td>
                            <td><?php echo $value['destination']; ?></td>
                            <td><?php echo $value['dept_time']; ?></td>
                            <td>
                                <a href="view.php?id=<?php echo $value['launch_name'];  ?>">View</a> |
                                <a href="model/delete.php?id=<?php echo $value['launch_id']; ?>">Delete</a> 
                            </td>
                        </tr>
                        <?php
                        $count = $count + 1;
                    }
                    ?>
                </table>
            </div>
            <br/>
        </div>
        <!-- DIV end for Dashboard --> 
    </div>
    <!-------------------BODY START----------------------> 
    <!-------------------FOOTER START-------------------->
    <?php include('include/footer.php'); ?>
    <!-------------------FOOTER END---------------------->
</body>
</html>
