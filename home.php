<?php
include 'connect.php' ;
session_start();
if ($_SESSION['log'] == '')
{
    header("location:index.php");
}
?>

<html><head>
<link rel='stylesheet' href='index.css'>

<link rel="shortcut icon" href="logofig.jpg" />
</head><body>
<table align="right"><td></td></tr></table>

 <center><img style="width: 485px; height: 167px;" alt="EasyTrip" src="logohead.png" ></center>
<hr>
 <?php 
 echo "<center><h1>Welcome " . $_SESSION['name'] . "</h1></center>";
 echo "<center><h2>What do you want to do ?</h2></center>"
 ?>
<div><table id="home" style="width: 40%; height: 136px; text-align: left; margin-left: auto; margin-right: auto;" cellpadding="2" cellspacing="2"><tbody>
<tr align="center"><td><a href="Book.php"><button>Book Tickets</button></a></td>
</a></td></tr>
<tr align="center"><td><a href="Transac.php"><button>Transactions</button></a></td>
</tr>
<tr align="center"> <td><a href="logout.php"><button>Logout</button></a></td></tbody></table>
</div>
</body></html>