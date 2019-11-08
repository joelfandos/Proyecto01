<?php 

include("connection.php"); 

$use_requ = $_REQUEST['username'];
$pass = $_REQUEST['password'];
$pwd_requ = md5($pass);
$sql ="SELECT * FROM usuarios WHERE usuario ='$use_requ' AND password='$pwd_requ';";
$result = $conn->query($sql);
 
if(!empty($result) && mysqli_num_rows($result)==1){
	session_start();
	$_SESSION['usr'] = $use_requ;
	echo '<meta http-equiv="Refresh" content="0;URL=../index.php">';
}else{
	echo '<meta http-equiv="Refresh" content="0;URL=../login.php">';
} 

$conn->close();
?>
