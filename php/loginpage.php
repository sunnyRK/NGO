<?php
	include("connect.php");
	$user=$_POST['user'];
	$pass=$_POST['pass'];
	$query=mysqli_query($con,"SELECT * FROM `users` WHERE username='$user';");
		if(mysqli_num_rows($query)>0)
		{
			while($query_fetch=mysqli_fetch_assoc($query))
			{

				$query_pass=$query_fetch['password'];
				if($pass==$query_pass)
				{
					echo "available";
				}
				else
				{
					echo "wrong password";
				}		
			}	
		}
		else
		{
			echo "data not available";
		}
?>
