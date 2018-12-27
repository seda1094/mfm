<?php 
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);

if (isset($_POST['submit'])) {
	$msg = 'Name: ' . $_POST['name'] . "\n" 
	. 'Email: ' . $_POST['email']. "\n" 
	. 'Comment ' . $_POST['comment'];
	mail('seda1094@gmail.com' , "MFM Website emails" , $msg);
	header('location: archive.php');
	echo "yesssss";
}
else
{
	header('location: index.php');
	echo "nonono";
	exit(0);
}


 ?><!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
<h1>sdhfjsdfkjs</h1>
<script>
	alert("jhgsdhfgsdhjkf");
</script>
</body>
</html>