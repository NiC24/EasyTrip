<? php
include 'connect.php';
$sql_images="select * from image";
$result = mysql_query($connect,$sql_images);
$a=10;
while ($row=mysqli_fetch_array($result))
{
	echo '<img src="images/$row[1]"/>';
	echo '' ;
	echo $row[2];
	echo '<br>';
}
?>