<?php

	$con = mysqli_connect("localhost","root","","ngo");
	if(mysqli_connect_errno())
	{
		echo "Error occure while connecting with database".mysqli_connect_errno();	
	}

session_start();


?>