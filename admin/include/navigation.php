<?php 
if (isset($_SESSION['user_email'])) {
?>
<ul class="mainmenu">
    	<li class="<?php if ($placeholder == "create") {echo "active"; } ?>"><a href="create.php">Add New Launch</a></li>
        <li class="<?php if ($placeholder == "trashed") {echo "active"; } ?>"><a href="trashed.php">Trashed Item</a></li>
	<li class="<?php if ($placeholder == "dashboard") {echo "active"; } ?>"><a href="dashboard.php">Launch Info</a></li>
    <li class="<?php if ($placeholder == "logout") {echo "active"; } ?>"><a href="logout.php">Logout</a></li>
</ul>

<?php  }