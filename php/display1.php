<?php
include("connect.php");
$query=mysqli_query($con,"SELECT * FROM `users`;");
echo "<table border='1'>
<tr>
<td align=center> <b>Roll No</b></td>";

while($data = mysqli_fetch_row($query))
{   
    echo "<tr>";
    echo "<td align=center>".$data[0]."</td>";
    echo "</tr>";
}
echo "</table>";
?>