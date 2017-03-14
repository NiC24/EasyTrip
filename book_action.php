<?php
include 'connect.php' ;
session_start();
if ($_SESSION['log'] == '')
{
    header("location:index.php");
}

$source = $_POST['source'];
$dest = $_POST['dest'];
$class = $_POST['class'];
$type = $_POST['type'];
$no = $_POST['number'];

if ($source == $dest)
{
	echo"<h1><center>Source and destination Selected are Same , Please refill the form </center></h1>";
}

$sql_price="SELECT * FROM `price` WHERE `source` LIKE '$source' AND `dest` LIKE '$dest' AND `class` = $class";
$result = $connect->query($sql_price);
while($row = $result->fetch_assoc()){
$final = $row["Price"] * $type ;
$final=$final*$no;
echo "<h1><center>You have to pay : ₹ ".$final." </center></h1>";
 }
$_SESSION['final']= $final ;
$_SESSION['source']=$source;
$_SESSION['dest']=$dest;
$_SESSION['Class']=$class;
$_SESSION['Type']=$type;
?>
<html>
<head>
<link rel='stylesheet' href='index.css'>
<link rel="shortcut icon" href="logofig.jpg" />
</head>
<body>
<table align='center'>
<tr><td><a href='pay.php'><button>Proceed</button></a></td>
<td><a href='book.php'><button>Refill Details</button></a></td></td>
</tr>
</table>
</body>
</html>