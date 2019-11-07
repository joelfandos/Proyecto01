<?php 
  include("connection.php"); 

if ($_POST['FILTRO'] == 1) {
    $id = $_POST['id'];
    $user = $_POST['user'];
  	$sql11 = "INSERT INTO reserva(fecha_entrega,fecha_devolucion,id_recurso_fk,usuario_fk) VALUES (NOW(), NULL ,".$id.",'".$user."');";
  	$rs1 = mysqli_query($conn, $sql11);
    $sql1 = "UPDATE recursos set status = 2 where id_recurso = ".$id.";";
    $rs2 = mysqli_query($conn, $sql1);

    
  	exit();
  }elseif ($_POST['FILTRO'] == 2) {
    $id_recurs = $_POST['id_recurs'];
    $id_reser = $_POST['id_reser'];
    $sql2 = "UPDATE reserva SET fecha_devolucion = NOW() WHERE id_reserva = ".$id_reser.";";
    $rs3 = mysqli_query($conn, $sql2);
    $sql22 = "UPDATE recursos set status = 1 where id_recurso = ".$id_recurs.";";
    $rs4 = mysqli_query($conn, $sql22);
  }

 ?>