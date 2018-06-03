<?php
	include("connect.php");
	$eventid=$_POST['eventid'];
	$eventname=$_POST['eventname'];
	
	$status_get=mysqli_query($con,"INSERT INTO `ngo`.`upcoming_events` (`id`, `eventid`, `eventtitle`) VALUES ('NULL', '$eventid', '$eventname');");


				if($status_get)
				{
					echo "available";
				}
				else
				{
					echo "wrong";
				}

	
?>
