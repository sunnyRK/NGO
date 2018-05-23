<?php

	$con = mysqli_connect("localhost","root","","ngo");
	if(mysqli_connect_errno())
	{
		echo "Error occure while connecting with database".mysqli_connect_errno();	
	}
	else{
		echo "connected";
	}

session_start();
function logged_in()
{
	if(isset($_SESSION['email']) || isset($_COOKIE['email']))
	{
		return true;
	}
	else
	{
		return false;
	}
		
	
	}


function clogged_in()
{
	if(isset($_SESSION['femail']) || isset($_COOKIE['femail']))
	{
		return true;
	}
	else
	{
		return false;
	}
	
	
	}


function hlogged_in()
{
	if(isset($_SESSION['femail']) || isset($_COOKIE['femail']))
	{
		return true;
	}
	else
	{
		return false;
	}
	
	
	}
function tlogged_in()
{
	if(isset($_SESSION['email']) || isset($_COOKIE['email']))
	{
		return true;
	}
	else
	{
		return false;
	}
	
	
	}


?>