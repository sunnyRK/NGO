<?php
$photoname = $_POST['user']; 
if($_FILES['file']['name'] != ''){
    $test = explode('.', $_FILES['file']['name']);
    $extension = end($test);    
    $name = $photoname.'.'.$extension;
    $location = 'images/'.$name;
    move_uploaded_file($_FILES['file']['tmp_name'], $location);
}
?>