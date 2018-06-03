<?php
include("php/connect.php");
$user=$_POST['user'];
$val=$_POST['val'];
$query=mysqli_query($con,"SELECT '$val' FROM `users` WHERE $val='$user';");
$find = mysqli_num_rows($query);
echo $find;
?>