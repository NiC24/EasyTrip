<?php
include 'connect.php' ;
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
<title>book</title>
</head>
<body>
<center><img src="logohead.png" width='35%'></center> 
<form method='post' action ='book_action.php' >
<table align="center">
<tr><td>Source: </td> 
<td colspan="2"><input list="Stations" name="source">
  <datalist id="Stations">
    <option value="Thane">
    <option value="Airoli">
    <option value="Rabale">
    <option value="Ghansoli">
    <option value="Kopar Khairane">
	<option value="Turbhe">
	<option value="Jui Nagar">
	<option value="Nerul">
  </datalist> </td>
  </tr>
<tr><td>Destination : </td> <td colspan="2"><input list="Stations" name="dest"></td></td></tr>
<tr><td>Class :</td><td><input type="radio" name="class" value='1'>I</td><td><input type="radio" name="class" value='2'>II</td></tr>
<tr><td>Type :</td><td><input type="radio" name="type" value='1'>One-Sided</td><td><input type="radio" name="type" value='2'>Return</td></tr>
<tr><td>Number of Tickets</td><td colspan="2"><input type="integer" name="number" ></td></tr>
<tr><td colspan='3'><center><button type='Submit' name='login_submit' >Book</button></center></td></tr>

<tr></tr>

</table>
</form>
