<?php
	include("connect.php");
	$user=$_POST['user'];
	$pass=$_POST['pass'];
	$cpass=$_POST['cpass'];
	$name=$_POST['name'];
	$contact=$_POST['contact'];
	$email=$_POST['email'];
	$address=$_POST['address'];
	$city=$_POST['city'];
	$state=$_POST['state'];
	$pin=$_POST['pin'];
	$country=$_POST['country'];
	$aadhar=$_POST['aadhar'];
	//$pass=$_POST['image'];
	$intrest=$_POST['intrest'];
	$status_get=mysqli_query($con,"INSERT INTO `users` (`id`, `username`, `password`, `name`, `contact`, `email`, `address`, `pin`, `city`, `state`, `country`, `aadhar`, `image`, `AreaOfIntrest`) VALUES (NULL, '$user', '$pass', '$name', '$contact', '$email', '$address', '$pin', '$city', '$state', '$country', '$aadhar', 'pavan.png', '$intrest');");

				if($status_get)
				{
					echo "available";
				}
				else
				{
					echo "wrong";
				}

	
?>
