<?php 
  include("connection.php"); 

if ($_POST['FILTRO'] == 1) {
    $id = $_POST['id'];
    $user = $_POST['user'];
  	$sql = "INSERT INTO reserva(fecha_entrega,fecha_devolucion,id_recurso_fk,usuario_fk) VALUES (NOW(), NULL ,".$id.",'".$user."');";
  	$rs = mysqli_query($conn, $sql);
    $sql = "UPDATE recursos set status = 2 where id_recurso = ".$id.";";
    $rs = mysqli_query($conn, $sql);

    
  	exit();
  }elseif ($_POST['FILTRO'] == 2) {
    $id = $_POST['id'];
    $user = $_POST['user'];
    $sql = "INSERT INTO reserva(fecha_entrega,fecha_devolucion,id_recurso_fk,usuario_fk) VALUES (NOW(), NULL ,".$id.",'".$user."');";
    $rs = mysqli_query($conn, $sql);
    $sql = "UPDATE recursos set status = 2 where id_recurso = ".$id.";";
    $rs = mysqli_query($conn, $sql);
  }

 ?>