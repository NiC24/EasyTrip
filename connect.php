<?php
$hostname  = 'localhost';
$username = 'root';
$password='';
$dbname = 'easytrip';
$connect =  mysqli_connect($hostname , $username , $password ,$dbname) or die("Error Connecting");
?>