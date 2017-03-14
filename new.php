<? php
include 'connect.php';
$sql_images="select * from image";
$result = mysql_query($connect,$sql_images);
while ($row=mysqli_fetch_array($result))
{
	echo $row[1];
	echo '' ;
	echo $row[2];
	echo '<br>';
}
?>