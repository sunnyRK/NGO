<?php
	include("connect.php");
	$query=mysqli_query($con,"SELECT * FROM `upcoming_events`;");
		if(mysqli_num_rows($query)>0)
		{
			while($query_fetch=mysqli_fetch_assoc($query))
			{

				$query_pass=$query_fetch['eventtitle'];
				echo $query_pass;
				echo ",";
			}	
		}
		else
		{
			echo "data not available";
		}
?>
