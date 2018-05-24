<?php
	include("connect.php");
	$user=$_POST['user'];
	$contact=$_POST['contact'];
	$email=$_POST['email'];
	$address=$_POST['address'];
	$category=$_POST['category'];
	$eventinfo=$_POST['eventinfo'];
	$volunters=$_POST['volunters'];
	$datefrom=$_POST['datefrom'];
	$dateto=$_POST['dateto'];
	$timefrom=$_POST['timefrom'];
	$timeto=$_POST['timeto'];
	$otherreq=$_POST['otherreq'];
	//$pass=$_POST['image'];
	//$intrest=$_POST['intrest'];
	$status_get=mysqli_query($con,"INSERT INTO `ngo`.`event_request` (`id`, `name`, `contactno`, `emailid`, `address`, `eventcategory`, `eventinfo`, `volunterscount`, `eventdatefrom`, `eventdateto`, `eventtimefrom`, `eventtimeto`, `extrareq`) VALUES ('NULL', '$user', '$contact', '$email', '$address', '$category', '$eventinfo', '$volunters', '$datefrom', '$dateto', '$timefrom', '$timeto', '$otherreq');");

				if($status_get)
				{
					echo "available";
				}
				else
				{
					echo "wrong";
				}

	
?>
