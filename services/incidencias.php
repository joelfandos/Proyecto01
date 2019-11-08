<?php 
session_start();
include 'connection.php';
$descripcion=$_REQUEST['dsc_incidencias'];
$id_recursos_incidencia=$_SESSION['id_recursos_incidencia'];
$usuario_id = $_SESSION['id_usuario'];
$query = "INSERT INTO incidencias (dsc_incidencia, id_recursos, id_usu, estado) VALUES ('$descripcion', '$id_recursos_incidencia', '$usuario_id', '0')";
$result = mysqli_query($db, $query);
echo $query;
 ?>