<?php
include 'connect.php';
$name = $_POST['name'];
$email = $_POST['email'];
$dob  = $_POST['dob'];
$password = $_POST['password'];
$Gender = $_POST['Gender'];
$sql_userdatabase="Insert into userdatabase(Name ,Email , Gender, password ,dob) values ('$name' , '$email' , '$Gender', '$password', '$dob')";

if(mysqli_query($connect, $sql_userdatabase) == true)
{
	echo "<h1><center>You have been sucessfully registered<center></h1><br>";
	echo "<h2><center><a href='index.php'>Login</a></center></h2>";
}
else
{
	echo "<h1><center>Registration Unsucessful , Please try again<center></h1> <br>";
	echo "<h2><center><a href='register.php'>Register</a></center";
}

?>
