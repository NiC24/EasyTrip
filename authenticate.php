<?php
include 'connect.php' ;
$email = $_POST['email'];
$password = $_POST['password'];
$sql_userdatabase = "Select * from userdatabase where email = '$email' and password='$password' ";
$result_userdatabase = mysqli_query($connect, $sql_userdatabase);
if(mysqli_num_rows($result_userdatabase) <= 0)
{
	echo "<center><h1>Incorrect Email or Password</h1></center>";
	echo "<center><table><tr><td><A href='index.php'><button>Try Again</button></a></td></tr></table></center>";
}
else
{
	
	header("location:home.php");
	$row_userdatabase = mysqli_fetch_array($result_userdatabase);
	session_start();
	$_SESSION['email']=$email;
	$_SESSION['name']=$row_userdatabase['Name'];
	$_SESSION['userid']=$row_userdatabase['UserID'];
	$_SESSION['log']= '1' ;
}
?>