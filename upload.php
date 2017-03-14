<?php
include 'connect.php';
$imagename=$_POST['imagename'];
$description=$_POST['description'];
$sql_upload="insert into image(imagepath,description) values ('$imagename', '$description')";
mysqli_query($connect , $sql_upload);
?>