<?php require_once('neticketing.php'); ?>

<?php
include('neticketing.php');
if (!isset($_SESSION)) {
    session_start();
}

if (isset($_SESSION['user_email'])) {
	//session_start();

$id = $_GET['id'];


$query = "SELECT * FROM launch_info WHERE launch_id = '" . $id . "'";
$r = mysql_query($query);

$allLaunchInfo=mysql_fetch_assoc($r) ;

$query_seat = "SELECT * FROM launch_category, seat_catagory WHERE "
        . "launch_category.launch_id = '" . $id . "' AND "
        . "launch_category.catagory_id = seat_catagory.catagory_id";
$result_seat = mysql_query($query_seat,$conn);

while ($row = mysql_fetch_array($result_seat)) {
	
   $allSeat_info[] = $row;}
//echo "<pre>";
//print_r($allSeat_info);
//echo "<pre>";
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
            <?php include('include/navigation.php'); ?>
            <!--main menu--> 

        </div>
        <!-- DIV start for Dashboard -->
        <div id="dashboard" style="margin-top: 30px; ">
            <div>
                <div class="title_home">
                    <font style="padding-left: 10px; font-family: arial; font-size: 16px; font-weight: bold; color: #000; ">
                    <?php echo $allLaunchInfo['launch_name'] ;?> Information
                    </font>
                </div>
                <!--Launch Info-->
                <table  class="table" style="box-shadow:0px 0px 16px #000000;">
                    <tr style="font-weight: bold;text-align: center; background: #6c1d4c; color: #ffffff">                      
                        <td>Launch ID</td>
                        <td>launch Name</td>
                        <td>Source</td>
                        <td>Destination</td>
                        <td>Departure Time</td>
                        <td>Action</td>
                    </tr>
					
                    <tr bgcolor="#FFF" align="center" >
                        <td><?php echo $allLaunchInfo['launch_id']; ?></td>
                        <td><?php echo $allLaunchInfo['launch_name'] ?></td>
                        <td><?php echo $allLaunchInfo['source'] ?></td>
                        <td><?php echo $allLaunchInfo['destination']; ?></td>
                        <td><?php echo $allLaunchInfo['dept_time']; ?></td>
                        <td>
                            <a href="edit.php?id=<?php echo $allLaunchInfo['launch_id']; ?>&flag=0">
                                Edit
                            </a> |
                            <a href="model/delete.php?id=<?php echo $allLaunchInfo['launch_id']; ?>">Delete</a> 
                        </td>
                    </tr>

                </table>
                <br/>

                <!--Seat info-->
                <div class="title_home">
                    <font style="padding-left: 10px; font-family: arial; font-size: 16px; font-weight: bold; color: #000; ">
                    <?php echo $allLaunchInfo['launch_name'] ;?> Seat Information
                    </font>
                </div>
                <table  class="table" style="box-shadow:0px 0px 16px #000000;">
                    <tr style="font-weight: bold;text-align: center; background: #6c1d4c; color: #ffffff">                      
                       
                        <td>Category Name</td>
                        <td>Price</td>
                        <td>Seat Amount</td>
                        <td>Action</td>
                    </tr>
                    <?php
                   // $count = 1;
				//$query_seat = "SELECT * FROM launch_cat, seat_catagory WHERE "
        //. "launch_cat.launch_id = '" . $id . "' AND "
        //. "launch_cat.catagory_id = seat_catagory.catagory_id";
//$result_seat = mysql_query($query_seat,$conn);
//$row = mysql_fetch_array($result_seat);

//while ($row = mysql_fetch_array($result_seat)) {
	
  //  $allSeat_info[] = $row;} 
//$allSeat_info[] = $row;
                    foreach($allSeat_info as $seat_info) {
                        ?>
                        <tr bgcolor="#FFF" align="center" >
                            
                            <td><?php echo $seat_info['catagory_name']; ?></td>
                            <td><?php echo $seat_info['price'] ?></td>
                            <td><?php echo $seat_info['capacity_amount'] ?></td>
                            <td>
                                <a href="edit.php?id=<?php echo $seat_info['catagory_id']; ?>&flag=1&launch_id=<?php echo $allLaunchInfo['launch_id'] ;?>">Edit</a> |
                                <a href="">Delete</a> 
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
<?php 
}

  else {
    header("Location:http://localhost/nTicketing-master/neticketing-m/admin/");
}
?>