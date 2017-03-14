<!DOCTYPE html>
<?php
include 'connect.php';
session_start();
if ($_SESSION['log'] == '')
{
    header("location:index.php");
}

?>

<html>
<head>
<link rel='stylesheet' href='index.css'>
<link rel="shortcut icon" href="logofig.jpg" />
<title> Registration Page </title>
</head>
<body>
<center><img src="logohead.png" width='35%'></center> 
<form method='post' action ='Receipt.php' >
<table align="center">
<tr><th colspan='3'>Enter your Card details:</th></tr>
<tr><td>Card Number : </td> <td colspan='2'><input type="Number" name="cno" maxlength='50'></td></tr>
<tr><td>Name on Card: </td> <td colspan='2'><input type="Text" name="name" maxlength='50'></td></tr>
<tr><td>Expiry Date : </td> <td><input type="Number" name="Em" placeholder='MM' maxlength='2'></td>
<td><input type="Number" name="Ey" placeholder='YY' maxlength='2'></td></tr>
<tr><td>CVV No: </td> <td colspan='2'><input type="Password" name="Cvv" maxlength='3'></td></tr>
<tr><td>PIN: </td> <td colspan='2'><input type="Password" name="Pin" maxlength='4'></td></tr>
<tr><td colspan='3'><center><button type='Submit' name='register_submit' >Make Payment</Button></center></td></tr>
</table>
</form>
</body>
</html>