<?php
$conn = mysqli_connect('localhost','root','','bd_proyecto01');
// $conn = mysqli_set_charset($conexion, "utf8");
if(mysqli_connect_errno()){
	die("Error al conectarnos a la base de datos: ".mysqli_connect_error());
}else{
	mysqli_set_charset($conn,"utf8");
}
?>