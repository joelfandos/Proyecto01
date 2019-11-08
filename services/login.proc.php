<?php 

include("connection.php"); 

$use_requ = $_REQUEST['username'];
$pass = $_REQUEST['password'];
$pwd_requ = md5($pass);
$sql ="SELECT usuario, tipo_usu FROM usuarios WHERE usuario ='$use_requ' AND password='$pwd_requ';";
$result = $conn->query($sql);


		while ($fila = mysqli_fetch_row($result)) {

			session_start();
    		$_SESSION['usr'] = $fila[0];
    		$_SESSION['rol'] = $fila[1];

		}

if(!empty($result) && mysqli_num_rows($result)==1){
;
	echo '<meta http-equiv="Refresh" content="0;URL=../index.php">';
}else{
	echo '<meta http-equiv="Refresh" content="0;URL=../login.php">';
} 

$conn->close();
?>
