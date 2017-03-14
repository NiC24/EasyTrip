<?php
include 'connect.php' ;
?>
<html>
<head>
 <link rel='stylesheet' href='index.css'>
 <link rel="shortcut icon" href="logofig.jpg" />
<title>Easytrip</title>
</head>
<body>
<center><img src="logo.jpg" width='35%'></center> 
<form method='post' action ='authenticate.php' >
<table align="center">
<tr><td>Email : </td> <td><input type="email" name="email" maxlength='50'></td></tr>
<tr><td>Password : </td> <td><input type="password" name="password" maxlength='50'></td></td></tr>
<tr><td colspan='2'><center><button type='Submit' name='login_submit' >Login</button></center></td></tr>
<tr><td><a href='register.php'>Register</a></td> <td><a href='aboutus.html'>About Us</a></td></tr>
<tr></tr>

</table>
</form>
</body>
</html>