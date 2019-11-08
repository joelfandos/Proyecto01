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
    $up = $_POST['up'];
    $id_reser = $_POST['id_reser'];
    $sql2 = "UPDATE reserva SET fecha_devolucion = NOW() WHERE id_reserva = ".$id_reser.";";
    $rs3 = mysqli_query($conn, $sql2);
    if($up == 1){
       $sql22 = "UPDATE recursos set status = 1 where id_recurso = ".$id_recurs.";";
       $rs4 = mysqli_query($conn, $sql22);
    }
    exit();
  }elseif ($_POST['FILTRO'] == 3) {
    $id = $_POST['id'];
    $user1 = $_POST['user1'];
    $desc = $_POST['desc'];
    $sql12 = "INSERT INTO incidencia(fecha_entrega,fecha_devolucion,id_recurso_fk,usuario_fk,descripcion) VALUES (NOW(), NULL ,".$id.",'".$user1."','".$desc."');";
    $rs1 = mysqli_query($conn, $sql12);
    $sql1 = "UPDATE recursos set status = 3 where id_recurso = ".$id.";";
    $rs2 = mysqli_query($conn, $sql1);
    exit();
  }elseif ($_POST['FILTRO'] == 3) {
    $id = $_POST['id'];
    $user1 = $_POST['user1'];
    $desc = $_POST['desc'];
    $sql12 = "INSERT INTO incidencia(fecha_entrega,fecha_devolucion,id_recurso_fk,usuario_fk,descripcion) VALUES (NOW(), NULL ,".$id.",'".$user1."','".$desc."');";
    $rs1 = mysqli_query($conn, $sql12);
    $sql1 = "UPDATE recursos set status = 3 where id_recurso = ".$id.";";
    $rs2 = mysqli_query($conn, $sql1);
    exit();
  }elseif ($_POST['FILTRO'] == 4) {
    $id_recurs = $_POST['id_recurs1'];
    $id_inci = $_POST['id_inci'];
    $sql2 = "UPDATE incidencia SET fecha_devolucion = NOW() WHERE id_incidencia = ".$id_inci.";";
    $rs3 = mysqli_query($conn, $sql2);
    $sql22 = "UPDATE recursos set status = 1 where id_recurso = ".$id_recurs.";";
    $rs4 = mysqli_query($conn, $sql22);
    exit();
  }

 ?>